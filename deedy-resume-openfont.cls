% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, top=2cm, bottom=0.8cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode,fontenc}
\usepackage{textcomp}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/raleway/]{Raleway-ExtraLight}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
    \noindent\begin{tabular*}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
        \begin{minipage}[t]{0.6\textwidth}
            \sffamily
            \raggedright
            \fontspec[Path = fonts/raleway/]{Raleway-Regular}\fontsize{30pt}{34pt}\selectfont #1 \\
            \vspace{2pt}
            \fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{18pt}{18pt}\selectfont #2
        \end{minipage}
        &
        \begin{minipage}[t]{0.35\textwidth}
            \raggedleft
            \color{headings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont #3
        \end{minipage}
    \end{tabular*}
    \vspace{4pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{14pt}{20pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\noindent\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Runsubsection lowercase variant
\newcommand{\runsubsectionlower}[1]{\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command - Education
\newcommand{\descripteducation}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors skills command
\newcommand{\skillsdescript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{11pt}{13pt}\selectfont {$\textbullet$ #1} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Skilldescript command
\newcommand{\skilldescript}[1]{\color{headings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11pt}{11pt}\selectfont {#1} \normalfont}

% SkillList command
\newcommand{\skillslist}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{12pt}}

% Section small seperators command
\newcommand{\sectionsepsmall}[0]{\vspace{6pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-1mm}\begin{itemize}\itemsep2pt \parskip1.5pt \parsep1.5pt}{\end{itemize}\vspace{-\topsep}}

\newcommand\projets[2]{
	\vspace{2pt}
	\noindent\hspace{1.5em} 
	\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{11pt}\selectfont #1
	\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{11pt}{11pt}\selectfont #2
	\par\vspace{10pt}
}

\newcommand\skillitem[2]{
	\vspace{2pt}
	% \hspace{1.5em} 
	\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{11pt}\selectfont #1
	\color{subheadings}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{11pt}{11pt}\selectfont #2
	\par\vspace{2pt}
} 
