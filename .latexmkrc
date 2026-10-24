# economicon.cls usa fontspec: compilar con LuaLaTeX
$pdf_mode = 4;
# No pasar --max-print-line: MiKTeX/LuaHBTeX no lo acepta.
$max_print_line = 0;
$lualatex = 'lualatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
$bibtex_use = 2;
