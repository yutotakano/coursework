\ProvidesClass{coursework} [2020/09/20 v0.01 LaTeX package for coursework, needs XeLaTeX]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[a4paper, top=1cm, bottom=1cm, left=2cm, right=2cm, includeheadfoot]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{iftex}
\RequirePackage{cleveref}
\newcommand{\ts}{\textsuperscript}
\ifXeTeX
  \RequirePackage{fontspec}
  \setmainfont{Linux Libertine O} % this exists in %localappdata%\Programs\MiKTeX 2.9\fonts\opentype\public\libertine since I installed {libertine} once
  \newfontfamily{\jost}{Jost-Book}
  \RequirePackage{unicode-math}
  \setmathfont[Scale=MatchUppercase]{Libertinus Math} % same here
\fi

% Core Colours
\definecolor{PMS282}{RGB}{0, 33, 71}      % corporate blue
\definecolor{PMS199}{RGB}{208, 16, 58}    % corporate red

% Brights
\definecolor{PMS207}{RGB}{167, 2, 64}     % red
\definecolor{PMS226}{RGB}{207, 0, 114}    % pink
\definecolor{PMS159}{RGB}{199, 91, 18}    % dark orange
\definecolor{PMS130}{RGB}{240, 171, 0}    % light orange

\definecolor{PMS2425}{RGB}{125, 0, 99}    % violet
\definecolor{PMS3135}{RGB}{0, 148, 179}   % blue
\definecolor{PMS311}{RGB}{12, 198, 222}   % light blue
\definecolor{PMS368}{RGB}{105, 190, 40}   % grass green

% Muted
\definecolor{PMS5005}{RGB}{182, 132, 140}
\definecolor{PMS483}{RGB}{103, 51, 39}   
\definecolor{PMS7518}{RGB}{109, 80, 71}  
\definecolor{PMS391}{RGB}{156, 154, 0}   
\definecolor{PMS3025}{cmyk}{1,0.21,0,0.58}% dark blue
\definecolor{PMS643}{RGB}{198,209,214}    % light blue
\definecolor{PMS3435}{RGB}{2,73,48}       % 
\definecolor{PMS7475}{RGB}{89,135,135}    % 

% Neutrals
\definecolor{PMS423}{RGB}{150,147,142}    % gray
\definecolor{PMS432}{RGB}{68,79,81}       % dark gray
\definecolor{PMS616}{RGB}{221,214,155}    % sand

% Aliases
\colorlet{UOEblue}{PMS282}
\colorlet{UOEred}{PMS199}

\colorlet{UOEdarkred}{PMS207}
\colorlet{UOEpink}{PMS226}
\colorlet{UOEorange}{PMS159}
\colorlet{UOEyellow}{PMS130}

\colorlet{UOEviolet}{PMS2425}
\colorlet{UOEgreen}{PMS368}
\colorlet{UOEbrown}{PMS5005}
\colorlet{UOEbrown1}{PMS483}
\colorlet{UOEbrown2}{PMS7518}
\colorlet{UOEbrown3}{PMS391}
\colorlet{UOEblue1}{PMS3025}
\colorlet{UOEblue2}{PMS643}
\colorlet{UOEblue3}{PMS3135}
\colorlet{UOEblue4}{PMS311}
\colorlet{UOEcyan}{PMS3435}
\colorlet{UOEcyan1}{PMS7475}

\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=UOEblue1,
    urlcolor=UOEblue1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% code style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\lstdefinestyle{style}{
  % backgroundcolor=\color{backcolour}, 
  commentstyle=\color{UOEgreen},
  keywordstyle=\color{UOEviolet},
  numberstyle=\tiny\color{gray},
  stringstyle=\color{UOEblue3},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  captionpos=b,
  extendedchars=true,
  frame=single,
  keepspaces=true,
  language=Octave,
  rulecolor=\color{black},
  showspaces=false,
  showtabs=false,
  tabsize=2,
  xleftmargin=3.4pt,
  xrightmargin=3.4pt,
}
\lstset{style=style}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% proof box
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcbtheorem[ 
  crefname={Proof}{Proofs},
  Crefname={Proof}{Proofs}
]{Proof}{Proof}{
  enhanced,
  sharp corners,
  attach boxed title to top left={
    xshift=-1mm,
    yshift=-4mm,
    yshifttext=-1mm
  },
  breakable,
  top=1.3em,
  colback=white,
  colframe=UOEblue,
  fonttitle=\small\jost,
  coltitle=white,
  boxed title style={
    sharp corners,
    size=small,
    colback=UOEblue,
    colframe=UOEblue,
  }
  % Usage:
  % \begin{Proof}{Title of proof}{labeltag}
  %   inside
  % \end{Proof}
  % 
  % with cleveref: \cref{prf:labeltag} and \Cref{prf:labeltag}
}{prf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pseudocode box
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\psuedobox}[1]{\pseudobox{#1}}
\newcommand{\pseudobox}[1]{
  \vspace{5mm}
  \noindent\fbox{%
    \parbox{\dimexpr\textwidth-2\fboxsep-2\fboxrule\relax}{%
    \begin{minipage}{\textwidth}
      \begin{algorithmic}
        #1
      \end{algorithmic}
    \end{minipage}}
  }
  \vspace{5mm}
}
\newcommand{\R}{\mathbb{R}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% https://tex.stackexchange.com/questions/2233/whats-the-best-way-make-an-augmented-coefficient-matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
  \hskip -\arraycolsep
  \let\@ifnextchar\new@ifnextchar
  \array{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create session macro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\session}[1]{\def\@session{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set default values if empty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@session{Unknown}
\def\@title{Untitled Document}
\def\@author{Yuto Takano}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fancy header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}
\lhead{\@author}
\chead{\@session}
\rhead{\today}
\cfoot{\thepage}
\renewcommand{\headrulewidth}{0.5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fancier maketitle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\maketitle{%
  \noindent\framebox[\textwidth]{
    \vbox{
      \vspace{3mm}
      \centering
      \jost\Large\textcolor{UOEblue}{\@title}\par
      \vspace{2mm}
      \jost\small\textcolor{PMS432}{\@session}
      \vspace{3mm}
    }
  }\par
  \vspace{5mm}
}

\AtBeginDocument{%
  \maketitle
  \thispagestyle{fancy}
}