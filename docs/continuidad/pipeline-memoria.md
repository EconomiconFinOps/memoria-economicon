# Pipeline de la memoria

Verificado el25/10/2026. Origen: «En el CD/CI se habla sobre el repo de la memoria?» y aceptación «Dale» de añadir un párrafo enF.6. Identificador del chat no disponible.

Base `1804217ffd13c4bb62f0d3df69332a62f5555d4d`, main trasPR34; rama `capitulo-f-pipeline-memoria`. Se añade sólo el párrafo de automatización documental en `capitulos/f-devops.tex` y su fuente `ci-memoria` en `referencias.bib`.

Fuente leída: [workflow de la memoria](https://github.com/EconomiconFinOps/memoria-economicon/blob/1804217ffd13c4bb62f0d3df69332a62f5555d4d/.github/workflows/memoria.yml), junto con `.latexmkrc`. GitHub Actions compila con LuaLaTeX/biber, adjunta el PDF a las PR y, al integrar los cambios pertinentes enmain, guarda una entrega sólo si no existe la versión declarada. No sustituye archivos publicados. No se equipara este proceso con el CD de la aplicación.

La petición autoriza la adición documental y su PR, no modifica el workflow o VERSION ni autoriza merge. Validación prevista: citas/estructura, compilaciónCI y revisión del PDF y paginación. Los resultados finales y el artefacto se registran en la PR correspondiente; no se declara compilación antes de comprobarla.
