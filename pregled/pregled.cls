\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pregled}[2024/02/11 1.3 (IH)]

\LoadClass[12pt,a4paper]{report}

\usepackage[croatian]{babel}
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{graphicx} % Required for the inclusion of images

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

\newcommand{\StazaZadatka}{}
\newcommand{\Zadatak}[1]{
    \renewcommand{\StazaZadatka}{\Staza#1}
    \noindent$#1$ % ispiši oznaku zadatka
    \input{\StazaZadatka}\par
    \vspace{0.8cm}
} % \Zadatak

\newcommand{\Slika}[2]{
    \begin{center}
        \includegraphics[scale=#1]{\StazaZadatka#2}
    \end{center}
} % \Slika

% naredbe u izvornim datotekama zadataka
\newcommand{\Oznaka}[3]{\noindent\textbf{#1} [#2]\texttt{ #3}\\}
\newcommand{\Komentar}[1]{\% \textit{#1}\\}
\newcommand{\Rokovi}[1]{\texttt{> #1}\\}
\newcommand{\Tekst}[1]{\stepcounter{zadatak}
    \noindent 
    \textbf{\arabic{cjelina}.\arabic{zadatak}.} #1
} % \Tekst
\newcommand{\Rjesenje}[1]{\vspace{0.3cm}\noindent{}Rješenje: #1\par}
\newcommand{\Postupak}[1]{}
