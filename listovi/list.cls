\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{list}[2024/02/05 1.0 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists

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

\newcommand{\PostaviStazu}[1]{\newcommand{\Staza}{#1}}

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

