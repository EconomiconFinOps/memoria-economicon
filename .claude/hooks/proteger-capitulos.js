#!/usr/bin/env node
// Bloquea las escrituras que incumplen las reglas de propiedad de CLAUDE.md.
// La letra del capítulo llega en CAPITULO (.claude/settings.local.json). Con "coordinador" se permite todo.

const path = require('path');

const raiz = process.env.CLAUDE_PROJECT_DIR || process.cwd();
const capitulo = (process.env.CAPITULO || '').trim().toLowerCase();

// Esta lista debe coincidir con .github/CODEOWNERS (ficheros del coordinador).
const LETRAS_VALIDAS = /^[a-i]$/;
const SOLO_COORDINADOR = [
  /^CLAUDE\.md$/,
  /^README\.md$/,
  /^economicon\.cls$/,
  /^main\.tex$/,
  /^VERSION$/,
  /^\.github\//,
  /^\.claude\//,
];
const LIBRES = [/^referencias\.bib$/, /^figuras\//];

function bloquear(motivo) {
  process.stderr.write(`Bloqueado por las reglas del repo: ${motivo}\n`);
  process.exit(2);
}

function comprobar(archivo) {
  if (capitulo === 'coordinador') return;

  const rel = path.relative(raiz, path.resolve(raiz, archivo)).split(path.sep).join('/');
  if (rel.startsWith('..')) bloquear(`${archivo} está fuera del repositorio.`);

  if (SOLO_COORDINADOR.some((re) => re.test(rel))) {
    bloquear(`${rel} solo lo edita el coordinador. Pídelo en el chat.`);
  }
  if (LIBRES.some((re) => re.test(rel))) return;

  const capituloDelFichero = rel.match(/^capitulos\/([a-i])-[^/]+\.tex$/);
  if (capituloDelFichero) {
    if (!LETRAS_VALIDAS.test(capitulo)) {
      bloquear('falta CAPITULO en .claude/settings.local.json (copia .claude/settings.local.example.json).');
    }
    if (capituloDelFichero[1] !== capitulo) {
      bloquear(`tu capítulo es "${capitulo}"; no edites ${rel}.`);
    }
  }
}

let entrada = '';
process.stdin.on('data', (trozo) => (entrada += trozo));
process.stdin.on('end', () => {
  let archivo;
  try {
    archivo = JSON.parse(entrada || '{}').tool_input?.file_path;
  } catch {
    bloquear('no se pudo leer la entrada del hook.');
  }
  if (archivo) comprobar(archivo);
  process.exit(0);
});
