# Memoria Economicon

Memoria del TFM de Economicon en LaTeX: plantilla con identidad visual, bibliografía en BibTeX y compilación automática del PDF.

## Estructura

| Ruta | Contenido |
| --- | --- |
| `main.tex` | Documento principal: portada, índice e inclusión de apartados |
| `economicon.cls` | Formato: paleta, tipografías, títulos, tablas, portada y marcas `\pendiente{}` |
| `capitulos/` | Un archivo por apartado (a–i). **Aquí se edita el contenido** |
| `figuras/` | Logotipo y diagramas |
| `referencias.bib` | Bibliografía común (una clave por fuente) |
| `fuentes/` | Inter y Space Grotesk (licencia OFL) para que compile igual en cualquier máquina |

## Compilar

```
latexmk -lualatex main.tex
```

Hace falta LuaLaTeX y `biber`. Cada PR compila el PDF y lo adjunta como artefacto (pestaña *Actions*). Al fusionar en `main`, el CI guarda el PDF en `entregas/Economicon_Memoria_TFM_vX.X.pdf`, con la versión que indica el fichero `VERSION`. Para generar una versión nueva, sube ese número antes de fusionar; si el número no cambia, el CI no sobrescribe el PDF existente.

## Reglas de redacción

Las reglas de redacción, de propiedad de capítulos y de compilación están en [AGENTS.md](AGENTS.md).

## Identidad visual

Space Grotesk (títulos) e Inter (texto). Colores: morado `#2B2359`, violeta `#5B4FE8`, tinta `#14121F`, gris `#6B6685`, coral `#FF8A5B`, lavanda `#EDEAF8`.
