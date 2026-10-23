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

Hace falta LuaLaTeX y `biber`. Cada PR compila el PDF y lo adjunta como artefacto (pestaña *Actions*). Al fusionar en `main`, la última versión queda publicada como `Economicon_Memoria_TFM.pdf` en la release [memoria-ultima](https://github.com/EconomiconFinOps/memoria-economicon/releases/tag/memoria-ultima).

## Reglas de estilo

- Tono tech-cercano, claridad sin jerga.
- Máximo 20 páginas en total entre todos.
- Toda cifra debe ser trazable al dato o fuente; lo que no exista se marca con `\pendiente{}` (nunca se inventa).
- Para la entrega, usar `\documentclass[final]{economicon}`: la compilación falla si queda alguna marca pendiente.

## Identidad visual

Space Grotesk (títulos) e Inter (texto). Colores: morado `#2B2359`, violeta `#5B4FE8`, tinta `#14121F`, gris `#6B6685`, coral `#FF8A5B`, lavanda `#EDEAF8`.
