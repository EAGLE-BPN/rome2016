%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% saparticle.cls                                                  %%
%% version 0.2                                                     %%
%% 2012-12-16                                                      %%
%% author: Francesco Biccari                                       %%
%% contact: biccari@gmail.com                                      %%
%%                                                                 %%
%% This file is the LaTeX class for the article style              %%
%% of the Sapienza University Press                                %%
%%                                                                 %%
%% see README for license information and installation             %%
%% see saparticle-doc.pdf for usage                                %%
%% see saparticle-example.pdf for document examples                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[2009/01/01]
\ProvidesClass{saparticle}%
[2012/11/16 Sapienza University Press article class]

\def\SAP@classVersion{0.2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\ifSAP@romandiff \SAP@romandifffalse
\newif\ifSAP@ebook \SAP@ebookfalse
\newif\ifSAP@vecarrow \SAP@vecarrowfalse
\newif\ifSAP@amsthm \SAP@amsthmfalse

\DeclareOption{ebook}{\SAP@ebooktrue}
\DeclareOption{vecarrow}{\SAP@vecarrowtrue}
\DeclareOption{amsthm}{\SAP@amsthmtrue}
\DeclareOption{romandiff}{\SAP@romandifftrue}
\DeclareOption{draft}{\PassOptionsToClass{draft}{article}}
\DeclareOption*{\ClassError{saparticle}{Option '\CurrentOption'%
  \MessageBreak is not valid}{Remove '\CurrentOption' %
  from class options}}
\ProcessOptions\relax
\LoadClass[10pt,twoside]{article}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LANGUAGE COMMANDS %%

\newcommand{\SAP@english}{%
  \newcommand{\SAP@theoremName}{Theorem}
  \newcommand{\SAP@lemmaName}{Lemma}
  \newcommand{\SAP@corollaryName}{Corollary}
  \newcommand{\SAP@propositionName}{Proposition}
  \newcommand{\SAP@conjectureName}{Conjecture}
  \newcommand{\SAP@criterionName}{Criterion}
  \newcommand{\SAP@axiomName}{Axiom}
  \newcommand{\SAP@definitionName}{Definition}
  \newcommand{\SAP@conditionName}{Condition}
  \newcommand{\SAP@problemName}{Problem}
  \newcommand{\SAP@exampleName}{Example}
  \newcommand{\SAP@exerciseName}{Exercise}
  \newcommand{\SAP@remarkName}{Remark}
  \newcommand{\SAP@noteName}{Note}
  \newcommand{\SAP@notationName}{Notation}
  \newcommand{\SAP@summaryName}{Summary}
  \newcommand{\SAP@caseName}{Case}
  \newcommand{\SAP@conclusionName}{Conclusion}
  \newcommand{\SAP@claimName}{Claim}}

\newcommand{\SAP@italian}{%
  \newcommand{\SAP@theoremName}{Teorema}
  \newcommand{\SAP@lemmaName}{Lemma}
  \newcommand{\SAP@corollaryName}{Corollario}
  \newcommand{\SAP@propositionName}{Proposizione}
  \newcommand{\SAP@conjectureName}{Congettura}
  \newcommand{\SAP@criterionName}{Criterio}
  \newcommand{\SAP@axiomName}{Assioma}
  \newcommand{\SAP@definitionName}{Definizione}
  \newcommand{\SAP@conditionName}{Condizione}
  \newcommand{\SAP@problemName}{Problema}
  \newcommand{\SAP@exampleName}{Esempio}
  \newcommand{\SAP@exerciseName}{Esercizio}
  \newcommand{\SAP@remarkName}{Osservazione}
  \newcommand{\SAP@noteName}{Nota}
  \newcommand{\SAP@notationName}{Notazione}
  \newcommand{\SAP@summaryName}{Sommario}
  \newcommand{\SAP@caseName}{Caso}
  \newcommand{\SAP@conclusionName}{Conclusione}
  \newcommand{\SAP@claimName}{Affermazione}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some settings%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{ifxetex}
\ifxetex
    \RequirePackage{xltxtra}
    \RequirePackage{amsmath}
    \ifSAP@amsthm\RequirePackage{amsthm}\fi
    \RequirePackage{fontspec}
    \RequirePackage{unicode-math}
    \setmainfont[Ligatures=TeX]{TeX Gyre Pagella}
    \setmathfont{Asana Math}
    \RequirePackage{microtype}
\else
    \RequirePackage{amsmath}
    \ifSAP@amsthm\RequirePackage{amsthm}\fi
    \RequirePackage[T1]{fontenc}
    \RequirePackage{lmodern}
    \RequirePackage{textcomp}
    \RequirePackage[sc]{mathpazo}
    \RequirePackage{tgpagella}
    \RequirePackage{microtype}
\fi
\linespread{1.167}
\parindent=5mm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{geometry}
\geometry{%
  %showframe,
  paperwidth=160mm,
  paperheight=210mm,
  textwidth=109mm,
  % numero intero di righe (39): 38 * baselineskip * 1.167 + topskip + 0.01
  % baselineskip = 12 pt quando si usa corpo 10. topskip = corpo
  % in TeX 1 mm = 2.84528 pt
  % in TeX 1 pt = 0.35146 mm
  textheight=190.55mm,
  top=5mm,
  inner=23mm,
  headsep=9.75mm}

\ifSAP@ebook
  \geometry{hmarginratio=1:1}
\fi


\RequirePackage{dammi}
\DeclareCaptionFont{SAP@captionfontspec}{\normalfont\fontsize{8}{10}\selectfont}
\captionsetup{labelfont={SAP@captionfontspec,bf},labelsep=period,%
  ,textfont=SAP@captionfontspec}
\captionsetup[figure]{name=Fig.}
\captionsetup[table]{name=Tab.}
\captionsetup[SCfigure]{name=Fig.}
\RequirePackage{graphicx}
\RequirePackage{booktabs}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Headers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{empty}

% Disabling the margin note
\def\marginpar{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% redefinition of the \maketitle command to generate the titlepage %


%title
%author
%cortext
%address

%abstract

%keyword


%% START

\def\maketitle{%
  % reset counters
  \c@cnote=0
  \c@fnote=0
  \c@tnote=0
  \c@footnote=0
  % title, authors, affiliations
  {\parindent=0pt
   \Large\@title\par\vskip16pt
   \normalsize\elsauthors\par\vskip10pt
   \footnotesize\itshape\elsaddress\par\vskip24pt}
  % 
  \ifx\@tnotes\@empty\else\@tnotes\fi
  \ifx\@nonumnotes\@empty\else\@nonumnotes\fi
  \ifx\@cornotes\@empty\else\@cornotes\fi
  \ifx\@fnotes\@empty\else\@fnotes\fi
  \gdef\thefootnote{\arabic{footnote}}
}


\let\comma\@empty
\let\tnotesep\@empty
\def\title#1{\gdef\@title{#1}}
\let\@title\@empty

\def\elsLabel#1{\@bsphack\protected@write\@auxout{}%
         {\string\Newlabel{#1}{\@currentlabel}}\@esphack}
\def\Newlabel#1#2{\expandafter\xdef\csname X@#1\endcsname{#2}}

\def\elsRef#1{\@ifundefined{X@#1}{0}{\csname X@#1\endcsname}%
}

\def\tnotemark[#1]{\textsuperscript{\@for\@@tmark:=#1\do{%
      \edef\tnotenum{\@ifundefined{X@\@@tmark}{1}{\elsRef{\@@tmark}}}%
      \ifcase\tnotenum\or\ding{73}\or,\ding{73}\ding{73}\fi}}%
}
\let\@tnotemark\@empty

\let\@tnotes\@empty
\RequirePackage{pifont}
\newcounter{tnote}
\def\tnotetext[#1]#2{\g@addto@macro\@tnotes{%
  \refstepcounter{tnote}\elsLabel{#1}%
   \def\thefootnote{\ifcase\c@tnote\or\ding{73}\or\ding{73}\ding{73}\fi}%
    \footnotetext{#2}}}

\let\@nonumnotes\@empty
\def\nonumnote#1{\g@addto@macro\@nonumnotes{%
     \let\thefootnote\relax\footnotetext{#1}}}

\newcounter{fnote}
\def\fnmark[#1]{\let\comma\@empty
    \def\@fnmark{\@for\@@fnmark:=#1\do{%
    \edef\fnotenum{\@ifundefined{X@\@@fnmark}{1}{\elsRef{\@@fnmark}}}%
  \unskip\comma\fnotenum\let\comma,}}%
}

\let\@fnotes\@empty\let\@fnmark\@empty
\def\fntext[#1]#2{\g@addto@macro\@fnotes{%
     \refstepcounter{fnote}\elsLabel{#1}%
   \def\thefootnote{\thefnote}%
   \global\setcounter{footnote}{\thefnote}%
   \footnotetext{#2}}}

\def\cormark[#1]{\edef\cnotenum{\elsRef{#1}}%
    \unskip\textsuperscript{\sep\ifcase\cnotenum\or
       $\ast$\or$\ast\ast$\fi\hspace{-1pt}}\let\sep=,}

\let\@cormark\@empty
\let\@cornotes\@empty
\newcounter{cnote}
\def\cortext[#1]#2{\g@addto@macro\@cornotes{%
    \refstepcounter{cnote}\elsLabel{#1}%
    \def\thefootnote{\ifcase\thecnote\or$\ast$\or
    $\ast\ast$\fi}%
    \footnotetext{#2}}}

\let\@corref\@empty
\def\corref#1{\edef\cnotenum{\elsRef{#1}}%
    \edef\@corref{\ifcase\cnotenum\or
         $\ast$\or$\ast\ast$\fi\hskip-1pt}}

\def\fnref#1{\fnmark[#1]}
\def\tnoteref#1{\tnotemark[#1]}

\let\@cormark\@empty
\def\hashchar{\expandafter\@gobble\string\~}
\def\underscorechar{\expandafter\@gobble\string\_}
\def\lbracechar{\expandafter\@gobble\string\{}
\def\rbracechar{\expandafter\@gobble\string\}}

\def\elsauthors{}
\def\pprinttitle{}
\let\authorsep\@empty
\let\sep\@empty
\newcounter{author}
\def\author{\@@author}

\def\@@author[#1]#2{\g@addto@macro\elsauthors{%
    \def\baselinestretch{1}%
    \authorsep#2\unskip\textsuperscript{%#1%
      \@for\@@affmark:=#1\do{%
       \edef\affnum{\@ifundefined{X@\@@affmark}{1}{\elsRef{\@@affmark}}}%
     \unskip\sep\affnum\let\sep=,}%
      \ifx\@fnmark\@empty\else\unskip\sep\@fnmark\let\sep=,\fi
      \ifx\@corref\@empty\else\unskip\sep\@corref\let\sep=,\fi
      }%
    \def\authorsep{\unskip,\space}%
    \global\let\sep\@empty\global\let\@corref\@empty
    \global\let\@fnmark\@empty}%
}

\def\elsaddress{}
\def\addsep{\par\vskip6pt}
\def\address{\@ifnextchar[{\@@address}{\@address}}

\def\@alph#1{%
  \ifcase#1\or a\or b\or c\or d\or e\or f\or g\or h\or i\or j\or k\or
  l\or m\or n\or o\or p\or q\or r\or s\or t\or u\or v\or w\or x\or
  y\or z%
  \or aa\or ab\or ac\or ad\or ae\or af\or ag\or ah\or ai\or aj\or
  ak\or al\or am\or an\or ao\or ap\or aq\or ar\or as\or at\or au\or
  av\or aw\or ax\or ay\or az%
  \or ba\or bb\or bc\or bd\or be\or bf\or bg\or bh\or bi\or bj\or
  bk\or bl\or bm\or bn\or bo\or bp\or bq\or br\or bs\or bt\or bu\or
  bv\or bw\or bx\or by\or bz%
  \or ca\or cb\or cc\or cd\or ce\or cf\or cg\or ch\or ci\or cj\or
  ck\or cl\or cm\or cn\or co\or cp\or cq\or cr\or cs\or ct\or cu\or
  cv\or cw\or cx\or cy\or cz%
  \or da\or db\or dc\or dd\or de\or df\or dg\or dh\or di\or dj\or
  dk\or dl\or dm\or dn\or do\or dp\or dq\or dr\or ds\or dt\or du\or
  dv\or dw\or dx\or dy\or dz%
  \or ea\or eb\or ec\or ed\or ee\or ef\or eg\or eh\or ei\or ej\or
  ek\or el\or em\or en\or eo\or ep\or eq\or er\or es\or et\or eu\or
  ev\or ew\or ex\or ey\or ez%
  \or fa\or fb\or fc\or fd\or fe\or ff\or fg\or fh\or fi\or fj\or
  fk\or fl\or fm\or fn\or fo\or fp\or fq\or fr\or fs\or ft\or fu\or
  fv\or fw\or fx\or fy\or fz%
  \or ga\or gb\or gc\or gd\or ge\or gf\or gg\or gh\or gi\or gj\or
  gk\or gl\or gm\or gn\or go\or gp\or gq\or gr\or gs\or gt\or gu\or
  gv\or gw\or gx\or gy\or gz%
  \else\@ctrerr\fi}

\newcounter{affn}
\renewcommand\theaffn{\alph{affn}}

\long\def\@@address[#1]#2{\g@addto@macro\elsaddress{%
    \def\baselinestretch{1}%
     \refstepcounter{affn}
     \xdef\@currentlabel{\theaffn}
     \elsLabel{#1}%
    \textsuperscript{\theaffn}#2\par}}

\long\def\@address#1{\g@addto@macro\elsauthors{%
    \def\baselinestretch{1}%
    \addsep\footnotesize\itshape#1\def\addsep{\par\vskip6pt}%
    \def\authorsep{\par\vskip8pt}}}

\renewenvironment{abstract}{%
  \noindent\unskip\textbf{Abstract}
  %\small
  \par\medskip\noindent\unskip\ignorespaces}{\vskip12pt}

\def\keywords#1{\noindent\textit{Keywords:} #1\par\vskip24pt}

\skip\footins=24pt

%% END


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title style modification

\setcounter{secnumdepth}{3}

\RequirePackage[rigidchapters]{titlesec}

\titlespacing*{\section}{0pt}{5.13mm}{0.7mm}
\titleformat{\section}[hang]{\normalfont\linespread{1}\fontsize{12}{14}\selectfont\bfseries}{\thesection.}{5pt}{}
\titlespacing*{\subsection}{0pt}{5.13mm}{0pt}
\titleformat{\subsection}[hang]{\normalfont\linespread{1}\fontsize{11}{14}\selectfont\bfseries}{\thesubsection.}{5pt}{}
\titlespacing*{\subsubsection}{0pt}{5.13mm}{0pt}
\titleformat{\subsubsection}[hang]{\normalfont\linespread{1}\fontsize{10}{14}\selectfont\bfseries}{\thesubsubsection.}{5pt}{}
    
               
%% Table of contents disabled
\def\tableofcontents{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page style modification
\setlength{\skip\footins}{5mm plus 2.5mm minus 0mm}
\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width 25mm height 0.5pt
  \kern 2.5pt
}
\setlength{\footnotesep}{3.5mm}

\renewcommand{\@makefntext}[1]{%
  \noindent
  \makebox[5mm][l]{\@makefnmark}%
  \parbox[t][][t]{104mm}{\setlength\parindent{1em}\noindent#1}}

%\renewcommand{\@makefntext}[1]{%
%  \noindent
%  \makebox[5mm][l]{\@makefnmark}%
%  \setlength\parindent{1em}
%  \noindent#1}


% Always use the indent for the first line
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Quoting
\RequirePackage[indentfirst=false,leftmargin=5mm,rightmargin=5mm]{quoting}
\renewcommand*{\quotingfont}{\normalfont\linespread{1}\fontsize{9}{14}\selectfont}


  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% USEFUL COMMANDS %%

\newcommand*{\SAP@upbox}[1]{\textrm{\upshape#1}} 
\AtBeginDocument{

  \ifSAP@ebook
    \RequirePackage[breaklinks,hyperfootnotes=false,colorlinks=true]{hyperref}
    \hypersetup{colorlinks=true,
        linkcolor=blue,
        anchorcolor=blue,
        citecolor=blue,
        urlcolor=blue,
        pdftitle={\@title},
        pdfauthor={\@author}
    }
  \fi

  % firma
  \providecommand{\sign}[1]{{\vspace{5mm}\normalfont\fontsize{10}{14}\selectfont\hfill\textit{#1}\hspace{10mm}}}

  % scritte in funzione della lingua del documento. Default inglese.
    \@ifpackageloaded{babel}{\csname SAP@\languagename\endcsname}{%
      \@ifpackageloaded{polyglossia}{\csname SAP@\languagename\endcsname}{\SAP@english}}

  % degree 
  \providecommand{\degree}{\SAP@upbox{\textdegree}} 
  \providecommand{\g}{\degree} 

  % gradi Celsius
  \providecommand{\celsius}{\ensuremath{\SAP@upbox{\textdegree}\kern-\scriptspace\mathrm{C}}}
  \ifxetex
    \ProvideTextCommandDefault{\C}{\celsius}
  \else
    \providecommand{\C}{\celsius}
  \fi
  
  % Angstrom 
  \providecommand{\angstrom}{\SAP@upbox{\AA}} 
  \providecommand{\A}{\angstrom} 
  
  % micro 
  \providecommand{\micro}{\SAP@upbox{\textmu}} 
  
  % Ohm 
  \providecommand{\ohm}{\SAP@upbox{\textohm}} 
  
  % times (only math) 
  \providecommand{\x}{\times} 
  
  % measurement unit 
  \providecommand*{\un}[1]{\ensuremath{\mathrm{\,#1}}} 

  % Napier's number 
  \providecommand{\eu}{\ensuremath{\mathrm{e}}} 
  
  % imaginary unit 
  \providecommand{\iu}{\ensuremath{\mathrm{i}}} 
  
  % roman subscript 
  \providecommand*{\rb}[1]{\ensuremath{_\mathrm{#1}}} 
  
  % roman superscript 
  \providecommand*{\rp}[1]{\ensuremath{^\mathrm{#1}}} 

  % differential (only math)
  \ifSAP@romandiff
    \providecommand{\di}{\mathop{}\!\mathrm{d}}
  \else
    \providecommand{\di}{\mathop{}\!d}
  \fi
  
  % vectors
  \ifSAP@vecarrow
    \relax
  \else
    \RequirePackage{bm}
    \renewcommand{\vec}{\bm}
  \fi
  
  % tensors
  \providecommand*{\tens}[1]{\mathsf{#1}}
  
  % derivative and partial derivative (only math) 
  \providecommand*{\der}[3][]{\frac{d\if?#1?\else^{#1}\fi#2}{d #3\if?#1?\else^{#1}\fi}} 
  \providecommand*{\pder}[3][]{% 
    \frac{\partial\if?#1?\else^{#1}\fi#2}{\partial #3\if?#1?\else^{#1}\fi}% 
  }

  % subscript and superscript in text mode
  \DeclareRobustCommand*\textsubscript[1]{\@textsubscript{\selectfont#1}} 
  \def\@textsubscript#1{{\m@th\ensuremath{_{\mbox{\fontsize\sf@size\z@#1}}}}}
  \providecommand*{\tb}[1]{\textsubscript{#1}}
  \providecommand*{\tp}[1]{\textsuperscript{#1}}
  
  % theorem-like environments
  \ifSAP@amsthm
    \theoremstyle{definition}
    \newtheorem{definition}{\SAP@definitionName}[section]
    \newtheorem{condition}{\SAP@conditionName}[section]
    \newtheorem{problem}{\SAP@problemName}[section]
    \newtheorem{example}{\SAP@exampleName}[section]
    \newtheorem{exercise}{\SAP@exerciseName}[section]
  
    \theoremstyle{remark}
    \newtheorem{remark}{\SAP@remarkName}[section]
    \newtheorem{note}{\SAP@noteName}[section]
    \newtheorem{notation}{\SAP@notationName}[section]
    \newtheorem{summary}{\SAP@summaryName}[section]
    \newtheorem{case}{\SAP@caseName}[section]
    \newtheorem{conclusion}{\SAP@conclusionName}[section]
    \newtheorem*{claim}{\SAP@claimName}
        
    \theoremstyle{plain}
    \newtheorem{theorem}{\SAP@theoremName}[section]
    \newtheorem{lemma}{\SAP@lemmaName}[section]
    \newtheorem{corollary}{\SAP@corollaryName}[section]
    \newtheorem{proposition}{\SAP@propositionName}[section]
    \newtheorem{conjecture}{\SAP@conjectureName}[section]
    \newtheorem{criterion}{\SAP@criterionName}[section]
    \newtheorem{axiom}{\SAP@axiomName}[section]
  \fi
}
