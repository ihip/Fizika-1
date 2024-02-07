\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pregled}[2024/02/06 1.0 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{graphicx} % Required for the inclusion of images

\newcommand{\Naslovnica}{
    \title{Fizika 1 - pregled zadataka}
    \maketitle
} % \Naslovnica

\AtBeginDocument{
    \newcommand{\Staza}{}
    \newcounter{cjelina}
    \newcounter{zadatak}
    \Naslovnica
} % \AtBeginDocument

\newcommand{\Cjelina}[1]{
    \stepcounter{cjelina}
    \setcounter{zadatak}{0}
    \newpage
    \textsc{\Huge\arabic{cjelina}. #1}
    \vspace{1.6cm}
} % \Cjelina

\newcommand{\PostaviStazu}[1]{\renewcommand{\Staza}{#1}}

\newcommand{\Zadatak}[1]{
    %\stepcounter{zadatak}
    %\textbf{\arabic{brojLista}.\arabic{zadatak}.}
    \input{\Staza#1}
    \vspace{0.8cm}
} % \Zadatak



