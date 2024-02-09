\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pregled}[2024/02/08 1.2 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{graphicx} % Required for the inclusion of images
\usepackage{amsmath} % Required for some math elements 
\usepackage{amssymb}


% brojači
\newcounter{cjelina}
\newcounter{zadatak}
\newcounter{ukupno} % ukupan broj zadataka

\newcommand{\Naslovnica}{
    \title{Fizika 1 - pregled zadataka}
    \maketitle
} % \Naslovnica

\AtBeginDocument{
    \Naslovnica
} % \AtBeginDocument

\newcommand{\Cjelina}[1]{
    \addtocounter{ukupno}{\value{zadatak}}
    \stepcounter{cjelina}
    \setcounter{zadatak}{0}
    \newpage
    \textsc{\Huge\arabic{cjelina}. #1}
    \vspace{1.6cm}
} % \Cjelina

\newcommand{\UkupnoZadataka}{
    \addtocounter{ukupno}{\value{zadatak}}
    \noindent
    \textsc{Ukupno zadataka: \arabic{ukupno}}\\
} % UkupnoZadataka

\newcommand{\Staza}{}
\newcommand{\PostaviStazu}[1]{\renewcommand{\Staza}{#1}}

\newcommand{\Zadatak}[1]{
    %\stepcounter{zadatak}
    %\textbf{\arabic{brojLista}.\arabic{zadatak}.}
    \noindent$#1$ % ispiši oznaku zadatka
    \input{\Staza#1}
    \vspace{0.8cm}
} % \Zadatak

% naredbe u izvornim datotekama zadataka
\newcommand{\Oznaka}[3]{\noindent\textbf{#1} [#2]\texttt{ #3}\\}
\newcommand{\Komentar}[1]{\% \textit{#1}\\}
\newcommand{\Rokovi}[1]{\texttt{> #1}\\}
\newcommand{\Tekst}[1]{\stepcounter{zadatak}
     \noindent
    \textbf{\arabic{cjelina}.\arabic{zadatak}.} #1 \par
} % \Tekst
\newcommand{\Rjesenje}[1]{\vspace{0.3cm}\noindent{}Rješenje: #1\par}
\newcommand{\Postupak}[1]{#1}
