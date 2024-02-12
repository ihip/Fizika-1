\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{list}[2024/02/11 1.3 (IH)]

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

\newcommand{\StazaZadatka}{}
\newcommand{\Zadatak}[1]{
    \renewcommand{\StazaZadatka}{\Staza#1}
%    \begin{minipage}{\textwidth}
    \input{\StazaZadatka}\par
%    \end{minipage}
    \vspace{0.8cm}
} % \Zadatak

\newcommand{\Slika}[2]{
    \begin{center}
        \includegraphics[scale=#1]{\StazaZadatka#2}
    \end{center}
} % \Slika

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
    \textbf{\arabic{cjelina}.\arabic{zadatak}.}#1
} % \Tekst
\newcommand{\Rjesenje}[1]{}
\newcommand{\Postupak}[1]{}
