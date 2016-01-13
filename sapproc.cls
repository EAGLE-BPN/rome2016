%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% sapproc.cls                                                     %%
%% version 0.1                                                     %%
%% 2012-12-09                                                      %%
%% author: Francesco Biccari                                       %%
%% contact: biccari@gmail.com                                      %%
%%                                                                 %%
%% This file is the LaTeX class for the conference proceedings     %%
%% of the Sapienza University Press                                %%
%%                                                                 %%
%% see README for license information and installation             %%
%% see sapproc-doc.pdf for usage                                   %%
%% see the example directory for document examples                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[2009/01/01]
\ProvidesClass{sapproc}%
[2012/12/09 Sapienza University Press conference proceedings class]

\def\SAP@classVersion{0.1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\ifSAP@ebook\SAP@ebookfalse
\DeclareOption{ebook}{\SAP@ebooktrue}
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}\PassOptionsToPackage{draft}{pdfpages}}
\DeclareOption*{\ClassError{sapproc}{Option '\CurrentOption'%
  \MessageBreak is not valid}{Remove '\CurrentOption' %
  from class options}}
\ProcessOptions\relax
\LoadClass[10pt]{book}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LANGUAGE COMMANDS %%

\newcommand{\SAP@english}{%
  \newcommand{\SAP@sapienzaEditriceName}{Sapienza Universit\`a Editrice}
  \newcommand{\SAP@address}{Piazzale Aldo Moro 5 -- 00185 Roma}
  \newcommand{\SAP@sapienzaEditriceWebsite}{www.editricesapienza.it}
  \newcommand{\SAP@sapienzaEditriceEmail}{edizioni.sapienza@uniroma1.it}
  \newcommand{\SAP@sapienzaEditriceRegistration}{Iscrizione Registro Operatori Comunicazione n. 11420}
  \newcommand{\SAP@coverImageInfoLabel}{Cover image}
  \newcommand{\SAP@sapienzaname}{Sapienza -- University of Rome}
  \newcommand{\SAP@versionLabel}{Version}
  \newcommand{\SAP@allRightsReservedLabel}{All rights reserved}
  \newcommand{\SAP@copyrightstatement}{La traduzione, l'adattamento totale o parziale, la riproduzione con qualsiasi mezzo (compresi microfilm, film, fotocopie), nonch\'e la memorizzazione elettronica, sono riservati per tutti i Paesi. L'editore \`e a disposizione degli aventi diritto con i quali non \`e stato possibile comunicare, per eventuali involontarie omissioni o inesattezze nella citazione delle fonti e/o delle foto.\\[1.5mm]
All Rights Reserved. No part of this publication may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopy, recording or any other information storage and retrieval system, without prior permission in writing from the publisher. All eligible parties, if not previously approached, can ask directly the publisher in case of unintentional omissions or incorrect quotes of sources and/of photos.}
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
  \newcommand{\SAP@claimName}{Claim}
  \newcommand{\SAP@indexTitle}{Author's index}}

\newcommand{\SAP@italian}{%
  \newcommand{\SAP@sapienzaEditriceName}{Sapienza Universit\`a Editrice}
  \newcommand{\SAP@address}{Piazzale Aldo Moro 5 -- 00185 Roma}
  \newcommand{\SAP@sapienzaEditriceWebsite}{www.editricesapienza.it}
  \newcommand{\SAP@sapienzaEditriceEmail}{edizioni.sapienza@uniroma1.it}
  \newcommand{\SAP@sapienzaEditriceRegistration}{Iscrizione Registro Operatori Comunicazione n. 11420}
  \newcommand{\SAP@coverImageInfoLabel}{In copertina}
  \newcommand{\SAP@sapienzaname}{Sapienza -- Universit\`a di Roma}
  \newcommand{\SAP@versionLabel}{Versione}
  \newcommand{\SAP@AcknowledgmentsLabel}{Ringraziamenti}
  \newcommand{\SAP@allRightsReservedLabel}{Tutti i diritti riservati}
  \newcommand{\SAP@copyrightstatement}{La traduzione, l'adattamento totale o parziale, la riproduzione con qualsiasi mezzo (compresi microfilm, film, fotocopie), nonch\'e la memorizzazione elettronica, sono riservati per tutti i Paesi. L'editore \`e a disposizione degli aventi diritto con i quali non \`e stato possibile comunicare, per eventuali involontarie omissioni o inesattezze nella citazione delle fonti e/o delle foto.\\[1.5mm]
All Rights Reserved. No part of this publication may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopy, recording or any other information storage and retrieval system, without prior permission in writing from the publisher. All eligible parties, if not previously approached, can ask directly the publisher in case of unintentional omissions or incorrect quotes of sources and/of photos.}
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
  \newcommand{\SAP@claimName}{Affermazione}
  \newcommand{\SAP@indexTitle}{Indice degli autori}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some settings%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{ifxetex}
\ifxetex
    \RequirePackage{xltxtra}
    \RequirePackage{amsmath}
    \RequirePackage{fontspec}
    \RequirePackage{unicode-math}
    \setmainfont[Ligatures=TeX]{TeX Gyre Pagella}
    \setmathfont{Asana Math}
    \RequirePackage{microtype}
\else
    \RequirePackage{amsmath}
    \RequirePackage[T1]{fontenc}
    \RequirePackage{lmodern}
    \RequirePackage{textcomp}
    \RequirePackage[sc]{mathpazo}
    \RequirePackage{tgpagella}
    \RequirePackage{microtype}
\fi
\linespread{1.167}
\parindent=5mm

\let\editor=\author

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{geometry}
\geometry{%
  %showframe,
  paperwidth=160mm,
  paperheight=230mm,
  textwidth=109mm,
  % numero intero di righe (39): 38 * baselineskip * 1.167 + topskip + 0.01
  % baselineskip = 12 pt quando si usa corpo 10. topskip = corpo
  % in TeX 1 mm = 2.84528 pt
  % in TeX 1 pt = 0.35146 mm
  textheight=190.55mm,
  top=25mm,
  inner=23mm,
  headsep=9.75mm}

\ifSAP@ebook
  \geometry{hmarginratio=1:1}
\fi


\RequirePackage{caption}
\DeclareCaptionFont{SAP@captionfontspec}{\normalfont\fontsize{8}{10}\selectfont}
\captionsetup{labelfont={SAP@captionfontspec,bf},labelsep=period,%
  ,textfont=SAP@captionfontspec}
\captionsetup[figure]{name=Fig.}
\captionsetup[table]{name=Tab.}
\captionsetup[SCfigure]{name=Fig.}
\RequirePackage{graphicx}
\RequirePackage{booktabs}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fancy headers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% these two lines remove the headers in the empty pages
%% (instead of loading the emptypage package)
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\thispagestyle{empty}\hbox{}\newpage\fi\fi}

\RequirePackage{fancyhdr}

%% definition of the main page style
\fancypagestyle{SAP@mainstyle}{%
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\ifnum \c@chapter>0 \thechapter.\ ##1 \else ##1 \fi}{}}
\fancyhf{}
\fancyhead[LE,RO]{\normalsize\linespread{1}\fontsize{9}{12}\selectfont\thepage}
\fancyhead[LO]{\normalsize\linespread{1}\fontsize{9}{12}\selectfont\nouppercase{\leftmark}}
\fancyhead[RE]{\normalsize\linespread{1}\fontsize{9}{12}\selectfont\textsc{\def\\{}\def\newline{}\@title}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

%% ri-definition of the plain style (first page of the chapters)
\fancypagestyle{plain}{%
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
%\fancyhead[LE,RO]{\small\thepage}
}

\g@addto@macro\frontmatter{\pagestyle{SAP@mainstyle}}
\g@addto@macro\mainmatter{\pagestyle{SAP@mainstyle}}

% Disabling the margin note
\def\marginpar{}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% numbering objects per chapters (e.g. 1.1, 1.2, ...) %%%%%%%%%%%%%%

\numberwithin{equation}{chapter}
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% redefinition of the \maketitle command to generate the titlepage %


%% GENERAL COMMANDS

\def\SAP@subtitle{}
\newcommand{\subtitle}[1]{\def\SAP@subtitle{#1}}

\def\SAP@copyyear{}
\newcommand{\copyyear}[1]{\def\SAP@copyyear{#1}}

\def\SAP@ISBN{}
\newcommand{\ISBN}[1]{\def\SAP@ISBN{#1}}

\def\SAP@coverImageInfo{}
\newcommand{\coverimageinfo}[1]{\def\SAP@coverImageInfo{#1}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\SAP@maketitle}{

% Errors:

\if|\SAP@copyyear|\ClassError{sapproc}{You must specify the %
  copyright year}{Example: \protect\copyyear{2012}}\fi

% Titlepage:

  % First page must have number III

  {\newgeometry{textwidth=109mm,textheight=190.55mm,top=25mm,headsep=9.75mm,hmarginratio=1:1}
  \thispagestyle{empty}%
  \setcounter{page}{3}

  \parindent=0pt
  \centering
    
  \nointerlineskip
  \vspace*{17.57mm}
  \nointerlineskip
  {\linespread{1}\fontsize{24}{29}\selectfont\@title\par}
  \nointerlineskip
  \vspace{4mm}
  \nointerlineskip
  {\linespread{1}\fontsize{16}{19}\selectfont\SAP@subtitle\par}
  \nointerlineskip
  \vspace{8mm}
  \nointerlineskip
  {\linespread{1}\fontsize{13}{17}\selectfont\itshape\@author\par}
  \vfill
  \includegraphics[width=25mm]{SUPlogo.pdf}\\
  {\normalfont\fontsize{11}{12}\selectfont\SAP@copyyear\par}

  \if@twoside\else
    \setcounter{page}{3}
  \fi
  \par
  \restoregeometry}

\clearpage
\SAP@composebacktitlepage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Macro for the back of the title page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\SAP@composebacktitlepage{%

{\thispagestyle{empty}
\newcommand{\SAP@parbox}[2][]{\hspace{-10mm}\parbox[t][##1][t]{119mm}{##2}}
\parindent=0pt

\vspace*{\stretch{1}}

\SAP@parbox{\linespread{1}\fontsize{8}{10}\selectfont Copyright \copyright\ \SAP@copyyear\\[1.5mm]
{\bfseries \SAP@sapienzaEditriceName}\\
\SAP@address\\[1.5mm]
\@ifundefined{href}{\SAP@sapienzaEditriceWebsite}{\href{http://\SAP@sapienzaEditriceWebsite}{\SAP@sapienzaEditriceWebsite}}\\
\@ifundefined{href}{\SAP@sapienzaEditriceEmail}{\href{mailto:\SAP@sapienzaEditriceEmail}{\SAP@sapienzaEditriceEmail}}\\[1.5mm]
ISBN \if|\SAP@ISBN|978-88-95814-XX-X\else\SAP@ISBN\fi\\[0.75mm]
\SAP@sapienzaEditriceRegistration}

\vspace{3mm}

\SAP@parbox{\linespread{1}\fontsize{7}{9}\selectfont \SAP@copyrightstatement\\[3mm]
\if|\SAP@coverImageInfo|\relax\else \SAP@coverImageInfoLabel: \SAP@coverImageInfo\fi}
%
%\vspace{2mm}
%
%\SAP@parbox{\linespread{1}\fontsize{7}{9}\selectfont sapproc version: %\SAP@classVersion}
}
\cleardoublepage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Choosing the right \maketitle

\renewcommand{\maketitle}{\SAP@maketitle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title style modification

\setcounter{secnumdepth}{3}

\RequirePackage[rigidchapters]{titlesec}

\renewcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vspace*{42.3mm}
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \linespread{1}\fontsize{12}{15}\selectfont\scshape \partname\nobreakspace\thepart
       \par
       \vskip 14\p@
     \fi
     \fontsize{14}{17}\selectfont\scshape #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \fontsize{14}{17}\selectfont\scshape #1\par}%
    \@endpart}


\titlespacing*{\chapter}{0pt}{-12pt}{57.7mm}
\titleformat{\chapter}[hang]{\normalfont\linespread{1}\fontsize{15}{19}\selectfont}{\thechapter.}{10pt}{}
\titlespacing*{\section}{0pt}{5.13mm}{0.7mm}
\titleformat{\section}[hang]{\normalfont\linespread{1}\fontsize{12}{14}\selectfont\bfseries}{\thesection.}{5pt}{}
\titlespacing*{\subsection}{0pt}{5.13mm}{0pt}
\titleformat{\subsection}[hang]{\normalfont\linespread{1}\fontsize{11}{14}\selectfont\bfseries}{\thesubsection.}{5pt}{}
\titlespacing*{\subsubsection}{0pt}{5.13mm}{0pt}
\titleformat{\subsubsection}[hang]{\normalfont\linespread{1}\fontsize{10}{14}\selectfont\bfseries}{\thesubsubsection.}{5pt}{}
    
\newcommand*\l@author[2]{\vspace{-1mm}\textit{#1}\par}

% Il titolo dell'indice non e' allineato come dovrebbe (e' piu' in alto).
% E' un bug di LaTeX e titlesec peggiora le cose perche' anche se correggo
% il codice LaTeX poi titlesec lo sovrascive in maniera sbagliata.
% Dovrei usare la mia correzione e non usare titlesec, ma ora non ho tempo.
% Ho dovuto ridefinire l'ambiente della
% classe book.cls aggiungendo uno spazio a occhio per far tornare le cose.
% Ora questa correzione si adatta al pacchetto makeidx.
% Va bene anche con il pacchetto imakeidx che però non ne ha bisogno perché
% corregge già tutto da solo.
\renewenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\vspace*{10\p@}\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table of contents modification

\setcounter{tocdepth}{2}

\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \normalfont\linespread{1}\fontsize{10}{14}\selectfont
    \vspace{-1mm}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{4.2mm \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode {\scshape #1}\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \vskip 2.1mm \@plus\p@
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    %\vskip 0.9mm \@plus\p@
    \vspace{1.7mm}
    \setlength\@tempdima{5mm}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
      \vskip 1.4mm \@plus\p@
    \endgroup
  \fi}

\renewcommand*\l@section{\@dottedtocline{1}{5mm}{8mm}}
\renewcommand*\l@subsection{\@dottedtocline{2}{13mm}{10mm}}


% Per togliere punti nell'indice senza modificare la definizione di
% dottedtocline
\renewcommand{\@dotsep}{10000} 
%
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par
     \vspace{0.4mm}}%
  \fi}

% Since it is too difficult to change all the definitions of
% the sectioning commands, it is better to redefine the numberline
% command which is given by the sectioning commands.
% In this way a period is added at the end of the number.
\let\savenumberline\numberline
\def\numberline#1{\savenumberline{#1.}}


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
%% Contributors environment
\newenvironment{contributors}[1][\SAP@ContributorsLabel]
{\interlinepenalty 10000
\raggedbottom
\setlength{\columnsep}{1cm}
\setlength{\parindent}{0pt}
\twocolumn
\chapter{\protect\rule{0pt}{25pt}#1}}
{\onecolumn\cleardoublepage}

\newcommand{\contributor}[2]
{\rule{0cm}{0.9cm}\textbf{#1}\\ #2\par \medskip}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Quoting
\RequirePackage[indentfirst=false,leftmargin=5mm,rightmargin=5mm]{quoting}
\renewcommand*{\quotingfont}{\normalfont\linespread{1}\fontsize{9}{14}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% DEDICATION COMMAND %%
\providecommand*{\dedication}[1]{%
\cleardoublepage
\thispagestyle{empty}
\vspace*{13mm}
\begin{flushright}
\parbox{36mm}{\normalfont\linespread{1}\fontsize{9}{12}\selectfont\itshape#1}
\end{flushright}}


%% paper inclusion commands
\RequirePackage{pdfpages}
\includepdfset{pages=-, noautoscale, offset= 0 -10mm, pagecommand={}}

\RequirePackage{imakeidx}
\makeindex[title=\SAP@indexTitle]

\newcount\SAP@paperauthorcount
\newtoks\SAP@paperauthortoks
\newtoks\SAP@papertitletoks

\def\paperauthor#1#2{%
\index{#2, #1}
\ifnum\SAP@paperauthorcount=\z@ 
    \SAP@paperauthortoks={#1 #2}% 
  \else 
    \SAP@paperauthortoks=\expandafter{\the\SAP@paperauthortoks, #1 #2}% 
  \fi 
  \advance\SAP@paperauthorcount\@ne}

\def\papertitle#1{\SAP@papertitletoks={#1}}

\def\includepaper#1{%
\cleardoublepage
\markboth{\the\SAP@papertitletoks}{\the\SAP@papertitletoks}
\ifSAP@ebook\phantomsection\fi
\addcontentsline{toc}{chapter}{\the\SAP@papertitletoks.\\ \textit{\the\SAP@paperauthortoks}}
\includepdf{pdfs/#1}
\SAP@paperauthorcount=\z@ }





  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% USEFUL COMMANDS %%

\newcommand*{\SAP@upbox}[1]{\textrm{\upshape#1}} 
\AtBeginDocument{

  \ifSAP@ebook
    \RequirePackage[breaklinks,hyperfootnotes=false]{hyperref}
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
  \providecommand{\di}{\mathop{}\!d}
  
  % vectors
  \RequirePackage{bm}
  \renewcommand{\vec}{\bm}
  
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
}

\AtEndDocument{\printindex}