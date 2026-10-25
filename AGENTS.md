# Memoria Economicon: reglas para agentes y personas

## Continuidad del proyecto

Consultar [docs/continuidad/README.md](docs/continuidad/README.md) y el resumen pertinente al comenzar; actualizar ambos tras hitos significativos, conservando las fuentes y los límites de cada revisión.

Este repositorio es la memoria del TFM. Varias personas redactan capítulos distintos, cada una con su agente. Estas reglas valen para todos. Si una petición las contradice, avisa antes de cambiar nada.

## Contexto

- **Regla principal:** los capítulos describen el comportamiento de la aplicación Economicon según `EconomiconFinOps/tfm-economicon`, rama `develop`. Antes de escribir cualquier afirmación sobre la implementación, léela allí (ver Fuentes). Nada se inventa ni se deduce de otras ramas.
- El lector es un tribunal que no conoce el proyecto en detalle. Cada apartado responde a: por qué importa, qué se hizo, qué se puede afirmar y qué no.
- La evaluación es individual: cualquiera del equipo debe poder defender toda la memoria. Escribe de forma que se entienda sin leer los demás capítulos.
- Máximo 20 páginas entre todos los apartados. Presupuesto orientativo: a 1 · b 2,5 · c 1,5 · d 3 · e 3 · f 2,5 · g 2 · h 3 · i 1,5.
- Orden recomendado dentro de cada apartado: 1) por qué importa, en 2 a 4 frases; 2) la teoría mínima que necesita el lector; 3) cómo lo hemos resuelto; 4) resultados y límites, con remisión a h.
- Comprueba en cada PR el número de páginas que muestra el CI.

## Fuentes

- Los capítulos describen la aplicación Economicon, cuyo código está en `EconomiconFinOps/tfm-economicon`, rama `develop`.
- Para afirmar algo sobre la implementación (arquitectura, flujo, pruebas, despliegue), léelo en esa rama: código, `docs/` y `openspec/`. No uses otras ramas ni copias antiguas.
- Si no tienes acceso al repo, pide al equipo el fichero o el dato concreto. Si no llega, marca el hueco con `\pendiente{}`. No describas la implementación de memoria.
- Excepción: si la persona responsable de esa parte del proyecto confirma un dato que aún no consta en `develop` (por ejemplo, las direcciones del despliegue en AWS), puede afirmarse limitándose a lo que confirma. Se cita como comunicación del equipo y se sustituye por la fuente del repositorio en cuanto exista. No vale para cifras: toda cifra sigue necesitando fuente.

## Qué se puede editar

- **Tu capítulo**: el que te haya asignado el coordinador. Solo editas `capitulos/<letra>-*.tex`.
- `referencias.bib` y `figuras/`: puedes añadir, sin modificar lo de otros.
- Los demás ficheros compartidos son del coordinador. La lista está en `.github/CODEOWNERS`. Aunque tu herramienta te deje editarlos, no lo hagas: la revisión de la PR los rechazará.

## Voz y estilo

- Frases completas y naturales. Evita el estilo telegráfico y las listas de cifras sueltas.
- Tono técnico y claro, sin jerga ni tono publicitario.
- «Nosotros» con moderación; si no, impersonal con «se». Nunca «tú» al lector.
- Los límites se dicen una vez, donde corresponden, en positivo y con verdad («margen de mejora», «objetivo por alcanzar»). Nunca se afirma que se cumple algo que no se cumple.
- Tiempos: presente para el sistema, pretérito para lo hecho o medido, futuro solo en el capítulo i.
- Toda sigla o concepto técnico se explica en su primera aparición (FinOps, RAG, MVP, CI/CD…). Se explica en una frase breve o en una nota al pie (`\footnote{}`). En tablas, la explicación va en la propia celda. Lo que no haga falta para entender la memoria, se quita.

## Cifras

- Formato español: coma decimal, punto de miles (`1.536`), `60,7 %`, `0,18 USD`.
- Las cifras exactas van en una tabla de resumen al principio del apartado. El texto las interpreta con referencias cualitativas («casi todas», «más de cuatro veces el objetivo») y no las repite.
- Toda cifra tiene referencia. Lo que no tenga fuente se marca con `\pendiente{}`. **Nunca inventes una cifra.**
- Cada tabla se entiende sola: columna «Qué cuenta» o definición previa de cada medida.

## Referencias

- Una sola bibliografía, al final. Citas con `\cite{clave}`; BibTeX numera en orden de aparición.
- Una clave por fuente. Las fuentes del mismo tipo se agrupan en una entrada con enlace a la carpeta o al fichero principal.
- No pongas listas de fuentes al final de cada apartado ni etiquetas tipo `[C1]` o `[R1]`.
- Los enlaces a commits no van ni en el texto ni en la bibliografía.

## Identificadores internos

No aparecen en el cuerpo del texto: códigos de tarea (JUP), PR, ADR, hashes de commit, números de ejecución de CI ni fechas de campañas. Se habla de «la primera medición», «antes del arreglo», «tras el arreglo», «la versión final». Los códigos sirven para verificar en las fuentes, no para leerse en la memoria.

## Estructura

- El título del apartado es `\section`; sus partes son `\subsection`.
- Dentro de una subsección, los encabezados cortos son `\subsubsection`, no negrita en línea.
- Tablas: `table` con `\caption` encima y `tabular` con anchos fijos. Numeración automática: `Tabla x.n`.
- Figuras: `\figura{fichero}{pie}`, con el pie debajo. Numeración automática: `Figura x.n`.
- Cada tabla o figura se menciona en el texto antes de aparecer.

## Marcadores

- `\pendiente{}` marca lo que falta para la entrega. Con la opción `final` la compilación falla mientras quede alguno.
- En borrador (sin `final`), los `\pendiente{}` se resaltan y el documento compila.
- No dejes notas de borrador en el PDF: ni «Nota sobre esta versión», ni cajas de «apartado reservado», ni bloques de conformidad.

## Nombres

Alejandro Aguado · Paris Arcos · Lucía Mateo · Víctor Méndez. Siempre con tildes.

## LaTeX

Al escribir o editar capítulos `.tex`, sigue el detalle de macros, etiquetas, tablas y escapes en `docs/latex.md`.

## Compilar y entregar

- No hace falta compilar en local: el CI compila cada PR y te dice si hay errores. Si quieres comprobarlo tú, `latexmk -lualatex main.tex` (requiere LuaLaTeX y biber).
- Usa `\documentclass{economicon}` en el trabajo. La opción `final` la aplica solo el coordinador para la entrega.
- El CI compila cada PR y adjunta el PDF.

## Flujo de trabajo

- Este repo es solo la memoria y usa `main` como única rama de integración. El flujo de `develop` es el de `tfm-economicon` (ver Fuentes): no lo "corrijas" aquí.
- Nunca hagas commit directo en `main`. Trabaja en una rama `capitulo-<letra>-<tema>` y abre PR a `main`.
- Commits en español con prefijo de tipo, como el historial existente: `docs: ...`.
- Antes de abrir la PR, cada hueco está resuelto o marcado con `\pendiente{}`.
- Cada PR la revisa el responsable del capítulo afectado (`.github/CODEOWNERS`).
