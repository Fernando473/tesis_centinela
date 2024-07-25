%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%	EPN DOCTORAL THESIS for LaTeX files	 17 January 2023
%% %%	For any information please send an e-mail to:
%% %%		ginno.taimal@epn.edu.ec or ginno.taimal@gmail.com
%% %%
%% %%	Initial class provided by:
%% %%		Ginno Taimal
%% %%   Modified by:
%% %%		--
%% %%   Versions:
%% %%		v1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% IDENTIFICATION
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[17/01/2023 EPN DOCTORAL THESIS paper class]

%%% PRELIMINARY DECLARATIONS
\LoadClass[11pt,a4paper]{report}
\RequirePackage[T1]{fontenc}                                            % Font encodigns -> Mapping of the character codes to the font glyphs that are used to typeset your output.
\RequirePackage[utf8]{inputenc}                                         % Specify an input encoding (for example, ASCII, ISO Latin-1 or Macintosh)
\RequirePackage[spanish]{babel}                                         % Spanish Traduction
\RequirePackage{helvet}                                                 % Fonts Package (Arial, Times, Courier)
\RequirePackage[
    top=3cm,
    left=3cm,
    right=2.5cm,
    bottom=2.5cm]{geometry}                                             % Page margins
\RequirePackage[
	colorlinks=true, 
	linkcolor=black, 
	citecolor=black, 
	urlcolor=black, 
	hyperfootnotes=false]{hyperref}                                     % Handle cross-referencing commands in LATEX to produce hypertext links in the document.
\RequirePackage{amsmath}                                                % General Math package
\RequirePackage{amsfonts}                                               % Math fonts
\RequirePackage{amssymb}                                                % Math symbols
\RequirePackage{float}                                                  % Improves the interface for defining floating object
\RequirePackage{csquotes}                                               % Provides advanced facilities for inline and display quotations
\RequirePackage{graphicx}                                               % The ‘extended’ or ‘enhanced’ graphics package.
\RequirePackage{tabularx}                                               % The extended tabular package.
\RequirePackage{array}                                                  % For table array
\RequirePackage{booktabs}                                               % For \toprule etc. in tables
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage[table]{xcolor}
\usepackage{paralist} % Añadir en el preámbulo
%% MINITOC
\RequirePackage[spanish]{minitoc}                                       % Mini-tables-of-contents
% Change fonts of minitoc
\renewcommand{\mtifont}{\large\sffamily}                                % Title
\renewcommand{\mtcfont}{\small\sffamily}                                % Chapters (I guess)
\renewcommand{\mtcSfont}{\small\sffamily}                               % Sections
\renewcommand{\mtcSSfont}{\small\sffamily}                              % Subsections
\renewcommand{\mtcSSSfont}{\small\sffamily}                             % Subsubsections

%% TITLES
\RequirePackage{titlesec}                                               % Interface to sectioning commands for selection from various title styles.
% Chapters
%\titleformat{\chapter}[hang]{
%        \bfseries\fontsize{16pt}{20pt}\selectfont
%    }{
%        \MakeUppercase{}\ \thechapter.}{5.0mm}{\MakeUppercase
%    }

% Sections
\titleformat{\section}[hang]{
        \bfseries\fontsize{14pt}{20pt}\selectfont
    }{
        \thesection.}{5.0mm}{
    }
    
% Subsections
\titleformat{\subsection}[hang]{
        \bfseries\fontsize{14pt}{20pt}\selectfont
    }{
        \thesubsection.}{5.0mm}{
    }
    
% SubSubSections
\titleformat{\subsubsection}[hang]{
        \bfseries\fontsize{12pt}{20pt}\selectfont
    }{
        \thesubsubsection.}{5.0mm}{
    }

% Paragraph
\titleformat{\paragraph}[hang]{
        \bfseries\fontsize{12pt}{20pt}\selectfont
    }{
        }{}{
    }
    
\titlespacing{\paragraph}{0pt}{4pt}{3pt}

%% Bibliography
\usepackage[style=ieee]{biblatex}                                       % BibLATEX uses its own data backend program called “biber” to read and process the bibliographic data.
\addbibresource{04Sections/04References/bibliography.bib}

%% Latin Sample Text Pack
\RequirePackage{lipsum}                                                 % Create text in Latin, ideal for visualizing the changes.

%%% NEW COMMANDS
%% Font General
\renewcommand{\familydefault}{\sfdefault}

% Note:
% \sf Command turns on sans serif mode for uppercase and lowercase letters and digits, and for uppercase Greek.
% \bf Used to turn on boldface; affects uppercase and lowercase letters, and digits.
% \centering Center text

%% Title Page
\newcommand{\titlePage}[7]{
    \begin{titlepage}
        \thispagestyle{empty}
        	\begin{center}
        	{\fontsize{24}{20pt}
                \textbf{ESCUELA POLITÉCNICA NACIONAL}
            }\\
            \vspace{2cm}
            {\fontsize{16}{20pt}
                \textbf{FACULTAD DE INGENIERÍA DE SISTEMAS}
            }\\
            \vspace{2cm}
            {\fontsize{14}{20pt}
                \textbf{#1}\\
                \vspace{1cm}
                \textbf{#2}
            }\\
            \vspace{2cm}
            {\fontsize{12}{20pt}
                \textbf{TRABAJO DE INTEGRACIÓN CURRICULAR PRESENTADO COMO REQUISITO PARA LA OBTENCIÓN DEL TÍTULO DE INGENIERO/A EN SOFTWARE}
            }\\
            %%% To add more people modify the \vspace and add more lines
            \vspace{2cm}
            {\fontsize{12}{20pt}
                \textbf{#3}\\
                \href{mailto:#4}{#4}
            }\\
            \vspace{2cm}
            {\fontsize{12}{20pt}
                \textbf{DIRECTOR: #5}\\
                \href{mailto:#6}{#6}
            }\\
            \vfill
            \vspace{1.5cm}
            {\fontsize{12}{20pt}
                \textbf{DQM, #7}
            }\\
        \end{center}
    \end{titlepage}
}

%% Certification Section
\newcommand{\certification}[2]{
    \newpage
    \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont CERTIFICACIONES}
    {\noindent Yo, #1 declaro que el trabajo de integración curricular aquí descrito es de mi autoría; que no ha sido previamente presentado para ningún grado o calificación profesional; y, que he consultado las referencias bibliográficas que se incluyen en este documento.}
    
    \begin{flushright}
        \signature{#1}{}
    \end{flushright}

    \vspace{1cm}
    
    {\noindent Certifico que el presente trabajo de integración curricular fue desarrollado por #1, bajo mi supervisión.}

    \begin{flushright}
        \signature{#2}{DIRECTOR}
    \end{flushright}
}

%% Declaration Section
\newcommand{\declaration}[3]{
    \newpage
    \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont DECLARACIÓN DE AUTORÍA}
    {
        \noindent A través de la presente declaración, afirmamos que el trabajo de integración curricular aquí descrito, así como el (los) producto(s) resultante(s) del mismo, son públicos y estarán a disposición de la comunidad a través del repositorio institucional de la Escuela Politécnica Nacional; sin embargo, la titularidad de los derechos patrimoniales nos corresponde a los autores que hemos contribuido en el desarrollo del presente trabajo; observando para el efecto las disposiciones establecidas por el órgano competente en propiedad intelectual, la normativa interna y demás normas.
        \vspace{2cm}\\
        \noindent #1
        \vspace{1cm}\\
        \noindent #2
        \vspace{1cm}\\
        \noindent #3
    }
}

%% Dedication Section
\newcommand{\dedication}[1]{
    \newpage
    \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont DEDICATORIA}
    {
        {\setlength{\parindent}{0pt} 
        #1}
    }
}

%% Acknowledgements Section
\newcommand{\acknowledgements}[1]{
    \newpage
    \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont AGRADECIMIENTO}
    {
        {\setlength{\parindent}{0pt} 
        #1}
    }
}

%% Prologue Section
\newcommand{\prologue}[1]{
    \newpage
    \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont PRÓLOGO}
    {
        {\setlength{\parindent}{0pt}
        #1}
    }
}

%% Signature
\newcommand{\signature}[2]{
    \vspace{2.5cm}
    \makebox[2.82in]{\hrulefill}    \\
    \bf{#1}                         \\
    \bf{#2}
}

%% Resumen - Abstract
\renewcommand{\abstract}[3]{
    \ifthenelse{\equal{#1}{spanish}}{
        %% Resumen
        \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont RESUMEN}
        {
            {\setlength{\parindent}{0pt} 
                #2}
        } \\
        %% Palabras Clave
        {
            {\setlength{\parindent}{0pt} 
                \textbf{\textit{PALABRAS CLAVE -}} #3}
        }
    }{\ }
    \ifthenelse{\equal{#1}{english}}{
        %% Abstract
        \chapter*{\sf\bf\centering\fontsize{14}{20pt}\selectfont ABSTRACT}
        {
            {\setlength{\parindent}{0pt} 
                #2}
        } \\
        %% KeyWords
        {
            {\setlength{\parindent}{0pt} 
                \textbf{\textit{KEYWORDS -}} #3}
        }
    }{\ }
    
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Cover
\usepackage{eso-pic}

% Graphics
    \usepackage{tikz}
    \usetikzlibrary{shapes,arrows}
    \usetikzlibrary{plotmarks}
    \usepackage{pgfplots}
    \pgfplotsset{compat=newest}
    \pgfplotsset{plot coordinates/math parser=false}
    \newlength\figureheight
    \newlength\figurewidth
    \usepackage{textpos}
    \usepackage{etoolbox}
    
%%%%%%%%%%%%%%%%%%%%%%%%%

%%% EXTRA CONFIGURATIONS
%% Line Spacing
\linespread{1.5}
% Note: If you use either the babel or polyglossia package you'll have to change the name for the particular language you use with babel or polyglossia.

\addto\captionsspanish{% Replace "english" with the language you use
    %% Change title of Table of Contents (Índice General)
    %\renewcommand{\contentsname}{Tabla de Contenidos}
    %% Change title of List Of Figures
    %\renewcommand{\listfigurename}{Lista de Figuras}
    %% Change title of List Of Tables
    \renewcommand{\listtablename}{Índice de Tablas}
    %% Change name of Tables
    \renewcommand{\tablename}{Tabla}
    %% Change title of Minitoc
    %\renewcommand{\mtctitle}{Mini Indice}
}

%%% REFERENCES
% 1. https://ondahostil.wordpress.com/2016/09/14/lo-que-he-aprendido-definir-comando-en-latex/
% 2. http://elclubdelautodidacta.es/wp/2012/07/latex-controlando-la-indentacion-de-los-parrafos/#:~:text=Si%20no%20te%20gusta%20indentar,p%C3%A1rrafo%20o%20en%20el%20siguiente.
% 3. https://mirrors.ucr.ac.cr/CTAN/macros/latex/base/ifthen.pdf
% 4. https://latexref.xyz/dev/latex2e-es.html#Acerca-de-este-documento
% 5. https://www.latex-project.org/help/documentation/usrguide.pdf
% 6. https://www.javatpoint.com/latex-fonts-size-and-styles
% 7. https://www.youtube.com/watch?v=mY2JquEjnNI
% 8. https://linorg.usp.br/CTAN/macros/latex/contrib/titlesec/titlesec.pdf
% 9. https://tex.stackexchange.com/questions/28516/how-to-change-the-title-of-toc
% 10. https://texblog.org/2011/09/09/10-ways-to-customize-tocloflot/
% 11. https://tex.stackexchange.com/questions/312979/removing-renaming-the-title-of-minitoc