% economicon.cls — plantilla de la memoria del TFM de Economicon.
% Compilar con LuaLaTeX (fontspec). Identidad visual tomada del Google Doc original:
%   Space Grotesk (titulos) + Inter (texto); paleta tinta / violeta / coral / lavanda.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{economicon}[2026/10/23 Memoria TFM Economicon]
\newif\ifborrador\borradortrue
\DeclareOption{final}{\borradorfalse}
\DeclareOption*{}
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{article}

\RequirePackage{iftex}
\RequirePackage[spanish,es-noquoting,es-tabla]{babel}
\RequirePackage{fontspec}
\RequirePackage[a4paper,margin=2cm,headheight=14pt]{geometry}
\RequirePackage{microtype}
\RequirePackage{setspace}
\RequirePackage[dvipsnames,table]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs,longtable,array,calc,tabularx}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{ragged2e}
\RequirePackage[font=small,labelfont=bf,labelsep=period]{caption}
\RequirePackage{etoolbox}
\RequirePackage{needspace}
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=numeric-comp,sorting=none,maxbibnames=6]{biblatex}
\RequirePackage[hidelinks=false,colorlinks=true]{hyperref}

% ---- Paleta -------------------------------------------------------------
\definecolor{tinta}{HTML}{14121F}
\definecolor{morado}{HTML}{2B2359}
\definecolor{violeta}{HTML}{5B4FE8}
\definecolor{gris}{HTML}{6B6685}
\definecolor{coral}{HTML}{FF8A5B}
\definecolor{lavanda}{HTML}{EDEAF8}
\definecolor{lavandaoscuro}{HTML}{E4E1FB}

% ---- Tipografia ---------------------------------------------------------
\setmainfont{Inter}[
  Path=fuentes/, Extension=.otf,
  UprightFont=*-Regular, ItalicFont=*-Italic,
  BoldFont=*-Bold, BoldItalicFont=*-BoldItalic,
  Color=tinta, Scale=0.92, Ligatures=TeX]
\newfontfamily\titulos{SpaceGrotesk}[
  Path=fuentes/, Extension=.ttf,
  UprightFont=*-Regular, BoldFont=*-Bold, Ligatures=TeX]
\setmonofont{DejaVuSansMono}[
  Path=fuentes/, Extension=.ttf,
  UprightFont=*, ItalicFont=*-Oblique,
  BoldFont=*-Bold, BoldItalicFont=*-BoldOblique, Scale=0.85]
\setstretch{1.08}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.35em}
\emergencystretch=2em

% ---- Titulos ------------------------------------------------------------
\renewcommand{\thesection}{\Alph{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\titleformat{\section}
  {\titulos\bfseries\Large\color{morado}\raggedright}{\thesection.}{0.6em}{}
  [\vspace{-0.3em}{\color{violeta}\titlerule[1.2pt]}]
\titleformat{\subsection}
  {\titulos\bfseries\large\color{violeta}\raggedright}{\thesubsection.}{0.6em}{}
\titleformat{\subsubsection}
  {\titulos\bfseries\normalsize\color{morado}\raggedright}{}{0em}{}
\titlespacing*{\section}{0pt}{2em}{0.8em}
\titlespacing*{\subsection}{0pt}{1.4em}{0.4em}
\let\oldsection\section
\renewcommand{\section}{\needspace{4\baselineskip}\oldsection}

% ---- Cabecera y pie -----------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[L]{\small\titulos\color{gris}ECONOMICON}
\fancyhead[R]{\small\color{gris}Memoria del proyecto}
\fancyfoot[C]{\small\color{gris}\thepage}
\fancypagestyle{plain}{\fancyhf{}\renewcommand{\headrulewidth}{0pt}\fancyfoot[C]{\small\color{gris}\thepage}}

% ---- Enlaces ------------------------------------------------------------
\hypersetup{colorlinks=true,linkcolor=violeta,urlcolor=violeta,citecolor=violeta}
\urlstyle{same}

% ---- Listas y tablas ----------------------------------------------------
\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\setlist{leftmargin=1.4em,topsep=0.2em}
\setlist[itemize]{label={\color{violeta}\textbullet}}
\renewcommand{\arraystretch}{1.3}
\setlength{\LTpre}{0.6em}\setlength{\LTpost}{0.6em}
\rowcolors{2}{white}{lavanda}
\arrayrulecolor{violeta}
\AtBeginEnvironment{longtable}{\small\raggedright}
\providecommand{\real}[1]{#1}

% ---- Utilidades de contenido -------------------------------------------
% Tablas y figuras numeradas por apartado: Tabla x.n y Figura x.n.
\@addtoreset{table}{section}
\@addtoreset{figure}{section}
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
% Figura a ancho de pagina y tamano proporcional; el pie se pasa como segundo argumento.
\newcommand{\figura}[2]{\begin{figure}[htbp]\centering\includegraphics[width=\linewidth,height=0.4\textheight,keepaspectratio]{figuras/#1.png}\caption{#2}\end{figure}}
% Marca de contenido pendiente: resaltada en borrador; con la opcion final falla la compilacion.
\newcommand{\pendiente}[1]{\ifborrador\colorbox{coral!35}{\textbf{[Pendiente#1]}}\else\PackageError{economicon}{Queda un [Pendiente#1]}{Resuelve las marcas pendientes antes de la entrega.}\fi}
\newcommand{\recuadro}[1]{\begin{center}\colorbox{lavanda}{\parbox{0.94\linewidth}{#1}}\end{center}}

% ---- Portada ------------------------------------------------------------
\newcommand{\portada}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    \vspace*{2cm}
    \includegraphics[width=3.2cm]{figuras/logo-economicon.png}\par\vspace{1.2cm}
    {\titulos\bfseries\fontsize{34}{40}\selectfont\color{morado} ECONOMICON\par}
    \vspace{0.4cm}
    {\itshape\color{gris} FinOps sin fricción, para quien no tiene tiempo de ser experto en FinOps.\par}
    \vspace{2.2cm}
    {\titulos\bfseries\fontsize{26}{30}\selectfont\color{tinta} Memoria del proyecto\par}
    \vspace{0.5cm}
    {\titulos\large\color{violeta} Asistente FinOps para Azure --- Propuesta\par}
    \vfill
    {\color{tinta} Alejandro Aguado \;·\; Paris Arcos \;·\; Lucía Mateo \;·\; Víctor Méndez\par}
    \vspace{0.4cm}
    {\small\color{gris} Trabajo Fin de Máster \;·\; Entrega prevista: octubre de 2026\par}
    \vspace*{1cm}
  \end{titlepage}}
