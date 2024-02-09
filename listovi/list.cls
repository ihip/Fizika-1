\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{list}[2024/02/08 1.2 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{graphicx} % Required for the inclusion of images

\newcommand{\BrojLista}[1]{
    \newcounter{brojLista}
    \setcounter{brojLista}{#1}
    \newcounter{cjelina}
    \setcounter{cjelina}{#1}    
    \newcounter{zadatak}
} % \BrojLista

\newcommand{\GlavaLista}{
    \textsc{\Huge Fizika 1 - List sa zadacima \arabic{brojLista}}
    \vspace{1.6cm}
} % \GlavaLista

\newcommand{\Staza}{}
\newcommand{\PostaviStazu}[1]{\renewcommand{\Staza}{#1}}

\newcommand{\Zadatak}[1]{
    %\stepcounter{zadatak}
    %\textbf{\arabic{brojLista}.\arabic{zadatak}.}
    \input{\Staza#1}
    \vspace{0.8cm}
} % \Zadatak

\AtBeginDocument{
    \pagenumbering{gobble}
    \GlavaLista
} % \AtBeginDocument

% naredbe u izvornim datotekama zadataka
\newcommand{\Oznaka}[3]{}
\newcommand{\Komentar}[1]{}
\newcommand{\Rokovi}[1]{}
\newcommand{\Tekst}[1]{\stepcounter{zadatak}
    \noindent 
    \textbf{\arabic{cjelina}.\arabic{zadatak}.} #1\par
} % \Tekst
\newcommand{\Rjesenje}[1]{}
\newcommand{\Postupak}[1]{}
