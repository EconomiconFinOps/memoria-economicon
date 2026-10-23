# LaTeX de la memoria

- Compila siempre con LuaLaTeX (`fontspec`) y biber. No uses `pdflatex`.
- Escribe el texto en UTF-8 con tildes directas (á, ñ, «»). Escapa `%`, `&`, `_` y `#` con una barra invertida delante.
- Incisos entre rayas: `---inciso---`, sin espacios alrededor, como en el resto de capítulos. No uses `--` ni comillas rectas.
- Macros del formato (definidas en `economicon.cls`):
  - `\figura{fichero}{pie}`: `fichero` es el nombre del PNG en `figuras/`, sin extensión ni ruta. El pie puede llevar `\cite{}` y, al final, un `\label{fig-<letra><n>}`.
  - `\recuadro{texto}`: caja de énfasis. Úsala con moderación.
  - `\pendiente{}`: marca de hueco. Con texto dentro, explica qué falta: `\pendiente{fuente de la cifra}`.
  - `\portada` solo va en `main.tex`.
- Etiquetas: las secciones usan `\label{<letra>-<número>}` (por ejemplo `d-12`). Las tablas usan `\label{tab-<letra><n>}` y las figuras `\label{fig-<letra><n>}`. Las etiquetas son únicas en todo el documento.
- Tablas: `table` con `\centering\small`, `\caption` encima, `booktabs` y `tabular` con anchos fijos en `p{}`. Menciona cada tabla antes de que aparezca, con `~\ref{tab-<letra><n>}`.
- Figuras y tablas se numeran solas por apartado (`Figura x.n`, `Tabla x.n`). No escribas los números a mano.
- Notas al pie con `\footnote{}` para explicar siglas o matices.
- Estructura: `\section` para el apartado, `\subsection` para sus partes y `\subsubsection` para encabezados cortos.
