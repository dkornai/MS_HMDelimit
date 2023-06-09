\newcommand\classname{article1}
\newcommand\lastmodifieddate{2050/12/31}
\newcommand\versionnumber{999.9}

\NeedsTeXFormat{LaTeX2e}[2001/06/01]
\ProvidesClass{\classname}[\lastmodifieddate\space\versionnumber]

\setlength{\paperheight}{246truemm}
\setlength{\paperwidth}{189truemm}

\newif\if@final

\ExecuteOptions{a4paper,centre,noinfo,fleqn}

\ProcessOptions

% Load all necessary packages
\RequirePackage{amssymb,amsmath,amsthm,graphicx,color}
%\usepackage{mathptmx}
%\usepackage{newtxtext}
\usepackage{newtxtext,newtxmath}
%\usepackage{newpxtext,newpxmath}

% Not sure if needed.
\newcommand\@ptsize{0}

% Set twoside printing
\@twosidetrue

% Marginal notes are on the outside edge
\@mparswitchfalse
%\reversemarginpar

%%%%%%%%%%%%%%%%%%%%%%%% *** SIZES *** %%%%%%%%%%%%%%%%%%%%%%%%%%
%
\renewcommand\normalsize{%
	\@setfontsize\normalsize{11\p@}{12\p@}
	\abovedisplayskip 5.5\p@ \@plus2\p@ \@minus0\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 3\p@ \@plus3\p@ \@minus0\p@
	\belowdisplayskip \abovedisplayskip
	\let\@listi\@listI}
\normalsize
\newcommand\small{%
	\@setfontsize\small\@ixpt{10.5}%
	\abovedisplayskip 9\p@ \@plus3\p@ \@minus4\p@
	\abovedisplayshortskip \z@ \@plus2\p@
	\belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
	\def\@listi{\leftmargin\leftmargini
		\topsep 4\p@ \@plus2\p@ \@minus2\p@
		\parsep 2\p@ \@plus\p@ \@minus\p@
		\itemsep \parsep}%
	\belowdisplayskip \abovedisplayskip}

\newcommand\footnotesize{%
	\@setfontsize\footnotesize\@viiipt{10}%
	\abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
	\abovedisplayshortskip \z@ \@plus\p@
	\belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
	\def\@listi{\leftmargin\leftmargini
		\topsep 3\p@ \@plus\p@ \@minus\p@
		\parsep 2\p@ \@plus\p@ \@minus\p@
		\itemsep \parsep}%
	\belowdisplayskip \abovedisplayskip}
%
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{16}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%
% Bibliography
%\def\bibfont{\small} 
%\newcommand{\bibfont}{\normalfont\small}
%
%

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

% Line spacing
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}

% Paragraph dimensions and inter-para spacing
\setlength\parskip{0\p@}
\setlength\parindent{1em}

% Set inter-para skips
\setlength\smallskipamount{2.5\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{5\p@ \@plus 2\p@}
\setlength\bigskipamount{10\p@ \@plus 4\p@ \@minus 4\p@}

% Page break penalties
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Disallow widows and orphans
\clubpenalty 100 %10000
\widowpenalty 100 %10000

% Disable page breaks before equations, allow pagebreaks after
% equations and discourage widow lines before equations.
\displaywidowpenalty 10 % 100
\predisplaypenalty   100 % 10000
\postdisplaypenalty  250 % 2500

\hyphenpenalty 5000

% Allow breaking the page in the middle of a paragraph
\interlinepenalty 0

% Disallow breaking the page after a hyphenated line
\brokenpenalty 10000

% Hyphenation; don't split words into less than three characters
\lefthyphenmin=3
\righthyphenmin=3

% Set page layout dimensions
%
\setlength\headheight{6\p@}           % height of running head
\setlength\topmargin{-5.0truemm}      % head margin
%\setlength{\leftmargin}{180.0truemm}  % left margin
%\setlength{\leftmargini}{180.0truemm}  % left margin


\setlength\topskip{10\p@}             % height of first line of text
\setlength\headsep{14\p@}             % space below running head 14pt--

\setlength\footskip{18\p@}            % space above footer line
\setlength\maxdepth{.5\topskip}       % pages can be short or deep by half a line?

\setlength\textwidth{42.0pc}          % text measure excluding margins
\newlength\fullwidth
\setlength\fullwidth{42.0pc}          % text measure excluding margins

\setlength\textheight{57\baselineskip} % 58 lines on a full page,
\addtolength\textheight{\topskip}      %   including the first
% line on the page
% Set the margins
\setlength\marginparsep{3\p@}
\setlength\marginparpush{3\p@}
\setlength\marginparwidth{35\p@}

\setlength\oddsidemargin{-10truemm}

\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-15truemm}
\setlength\evensidemargin{-10truemm}


\setlength\columnsep{2.0truepc}        % space between columns for double-column text
\setlength\columnseprule{0\p@}         % width of rule between two columns

% Footnotes
\setlength\footnotesep{9\p@}      % space between footnotes
% space between text and footnote
\setlength{\skip\footins}{12\p@ \@plus 6\p@ \@minus 1\p@}

% Float placement parameters

% The total number of floats that can be allowed on a page.
\setcounter{totalnumber}{10}
% The maximum number of floats at the top and bottom of a page.
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}
% The maximum part of the top or bottom of a text page that can be
% occupied by floats. This is set so that at least four lines of text
% fit on the page.
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
% The minimum amount of a text page that must be occupied by text.
% This should accomodate four lines of text.
\renewcommand\textfraction{.06}
% The minimum amount of a float page that must be occupied by floats.
\renewcommand\floatpagefraction{.94}

% The same parameters repeated for double column output
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.9}

% Space between floats
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
% Space between floats and text
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
% Space above and below an inline figure
\setlength\intextsep   {18\p@ \@plus 2\p@ \@minus 2\p@}

% For double column floats
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}

% Space left at top, bottom and inbetween floats on a float page.
\setlength\@fptop{0\p@}         % no space above float page figures
\setlength\@fpsep{12\p@ \@plus 1fil}
\setlength\@fpbot{0\p@}

% The same for double column
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{12\p@ \@plus 1fil}
\setlength\@dblfpbot{0\p@}

% Override settings in mathtime back to TeX defaults
\DeclareMathSizes{5}     {5}   {5}  {5}
\DeclareMathSizes{6}     {6}   {5}  {5}
\DeclareMathSizes{7}     {7}   {5}  {5}
\DeclareMathSizes{8}     {8}   {6}  {5}
\DeclareMathSizes{9}     {9}   {6.5}  {5}
\DeclareMathSizes{10}   {10}   {7.5}  {5}
\DeclareMathSizes{12}   {12}   {9}  {7}

% Page styles

\def\ps@headings
{%
	\def\@oddfoot{\hbox to \textwidth{\hfill\normalsize\thepage\hfill}}%
	\def\@evenfoot{\hbox to \textwidth{\hfill\normalsize\thepage\hfill}}%
	\def\@evenhead{\footnotesize\hfill{\fontshape{it}\selectfont
			\MakeUppercase\leftmark}\hfill}%
	\def\@oddhead{\footnotesize\hfill{%
			\fontshape{it}\selectfont\MakeUppercase\rightmark\hfill}}%
	\def\titlemark##1{\markboth{##1}{##1}}%
	\def\authormark##1{\gdef\leftmark{##1}}%
}

% Page range
%\def\firstpage#1{\def\@firstpage{#1}}%
%\def\lastpage#1{\def\@lastpage{#1}}%

%
% Sectional units
%

% Counters
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{figure}
\newcounter{table}

% Form of the numbers
\newcommand\thepage{\arabic{page}}
\renewcommand\thesection{\arabic{section}}
\renewcommand\thesubsection{{\thesection.\arabic{subsection}}}
\renewcommand\thesubsubsection{{\thesubsection.\arabic{subsubsection}}}
\renewcommand\theparagraph{\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}
\renewcommand\theequation{\arabic{equation}}

% Form of the words
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\refname{References}
\newcommand\bibname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}

% Clearemptydoublepage should really clear the running heads too
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

% Frontmatter, mainmatter and backmatter

\newif\if@mainmatter \@mainmattertrue

\newcommand\frontmatter{%
	\clearpage
	\@mainmatterfalse
	\pagenumbering{roman}}

\newcommand\mainmatter{%
	\clearpage
	\@mainmattertrue
	\pagenumbering{arabic}}

\newcommand\backmatter{%
	\clearpage
	\@mainmatterfalse}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TITLE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\dropfromtop}
\setlength{\dropfromtop}{\z@}

% Application Notes
\newif\if@appnotes
\newcommand{\application}{%
	%  \setlength{\dropfromtop}{-2.25pc}%
	\global\@appnotestrue}

\long\def\title{\@ifnextchar[{\short@title}{\@@title}}
\def\short@title[#1]{\titlemark{#1}\@@@title}
\def\@@title#1{\authormark{#1}\@@@title{#1}}
\long\def\@@@title#1{\gdef\@title{#1}}

\long\def\author{\@ifnextchar[{\short@uthor}{\@uthor}}
\def\short@uthor[#1]{\authormark{#1}\@@author}
\def\@uthor#1{\authormark{#1}\@@author{#1}}
\long\def\@@author#1{\gdef\@author{#1}}

\def\vol{0}%
\def\Sectitle{\MakeUppercase\relax}%
\def\issue{0}%
\def\address#1{\global\def\@issue{#1}}
\def\pubyear#1{\global\def\@pubyear{#1}}
\def\address#1{\global\def\@address{#1}}
\def\DOI{xxx000}%

\definecolor{gray}{cmyk}{0, 0, 0, 0.15}
\newlength{\extraspace}
\setlength{\extraspace}{\z@}

\def\copyrightyear{2004}%

\def\ps@opening{%
	\def\@evenfoot{\vbox to 28pt{\vss\hsize=\fullwidth\parindent\z@%
			\hbox to \fullwidth{\hfill\normalsize\thepage\hfill}\par\vskip3\p@%
			{\fontsize{8}{9}\selectfont Journal Vol.~\vol\ No.~\issue\ $\copyright$\ Important Press \copyrightyear; all rights reserved\par}}}%
	%%
	\let\@oddfoot\@evenfoot
	\def\@oddhead{\relax}\def\@evenhead{\relax}}

% Page range
\newif\iflastpagegiven   \lastpagegivenfalse
\newcommand\firstpage[1]{%
	\gdef\@firstpage{#1}%
	\ifnum\@firstpage>\c@page
	\setcounter{page}{#1}%
	\ClassWarning{BIO}{Increasing pagenumber to \@firstpage}%
	\else \ifnum\@firstpage<\c@page
	\ClassWarning{BIO}{Firstpage lower than pagenumber}\fi\fi
	\xdef\@firstpage{\the\c@page}%
}
\def\@firstpage{1}
\def\pagenumbering#1{%
	\global\c@page \@ne
	\gdef\thepage{\csname @#1\endcsname \c@page}%
	\gdef\thefirstpage{%
		\csname @#1\endcsname \@firstpage}%
	\gdef\thelastpage{%
		\csname @#1\endcsname \@lastpage}%
}

\newcommand\lastpage[1]{\xdef\@lastpage{#1}%
	\global\lastpagegiventrue}
\def\@lastpage{0}
\def\setlastpage{\iflastpagegiven\else
	\edef\@tempa{@lastpage@}%
	\expandafter
	\ifx \csname \@tempa \endcsname \relax
	\gdef\@lastpage{0}%
	\else
	\xdef\@lastpage{\@nameuse{@lastpage@}}%
	\fi
	\fi }
\def\writelastpage{%
	\iflastpagegiven \else
	\immediate\write\@auxout%
	{\string\global\string\@namedef{@lastpage@}{\the\c@page}}%
	\fi
}
\def\thepagerange{%
	\ifnum\@lastpage =0 {\ \bf ???} \else
	\ifnum\@lastpage = \@firstpage \ \thefirstpage\else
	\thefirstpage--\thelastpage \fi\fi}

\AtBeginDocument{\setlastpage
	\pagenumbering{arabic}%
}
\AtEndDocument{%
	\writelastpage
	\if@final
	\clearemptydoublepage
	\else
	\clearpage
	\fi}


\newcommand\maketitle{\par
	\begingroup
	\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
	\def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
	\long\def\@makefntext##1{\parindent 3mm\noindent
		%      \@textsuperscript{\normalfont\@thefnmark}\raggedright##1}%
		\@textsuperscript{\normalfont\@thefnmark}##1}%
	\if@twocolumn
	\ifnum \col@number=\@ne
	\@maketitle
	\else
	\twocolumn[\@maketitle]%
	\fi
	\else
	\newpage
	\global\@topnum\z@   % Prevents figures from going at top of page.
	\@maketitle
	\fi
	\thispagestyle{opening}\@thanks
	\endgroup
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@maketitle\relax
	\global\let\@address\@empty
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\@pubyear\@empty
	\global\let\address\relax
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\pubyear\relax
	\global\let\@abstract\@empty\global\let\abstract\relax
	\global\let\@copyrightline\@empty
	\global\let\and\relax
	\@afterindentfalse\@afterheading
}

\def\@maketitle{%
	\let\footnote\thanks
	\clearemptydoublepage
	\null%
	\vspace*{-2.125pc}%
	\hbox to \textwidth{%
		\parbox[t]{\fullwidth}{\noindent%
			{\fontsize{8}{9}\selectfont%
				Journal (\copyrightyear), Vol.~\vol, No.~\issue, pp.~\@firstpage--\@lastpage\hfill {\normalsize\it\Sectitle}\par
				DOI:\DOI\par}%
			\vspace*{23\p@}%
			{\fontsize{18}{22}\fontseries{b}\selectfont\center \@title \par}%
			\vskip5\p@%
			{\fontsize{11}{13}\selectfont\scshape\center\@author \par}%
			{\fontsize{11}{13}\selectfont\itshape\center\@address \par}%
			\vspace{5\p@}
			{\fontsize{11}{13}\fontshape{it}\selectfont\center \@date\par}%
			\vspace{-1.5\p@}
			%
			{ \unvbox\t@abstract}}%
	}
	\vspace{17.0\p@ plus 6\p@ minus 1\p@}%
	\vspace{\extraspace}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Abstract %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newbox\t@abstract
\def\abstract{\@ifnextchar[{\@abstract}{\@abstract[]}}
\def\@abstract[#1]{%
	\global\setbox\t@abstract=\vbox\bgroup
	\hsize\textwidth
	\normalsize\fontsize{11}{12}%\fontseries{b}
	\selectfont
	%  \parindent 1em
	\noindent %{\bfseries\abstractname}
	\vskip 12\p@
	\noindent\ignorespaces}
\def\endabstract{\par\egroup}
% Section macros

% Lowest level heading that takes a number by default
\setcounter{secnumdepth}{0}

\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\quad}

%25-10=15%above
%15-10=5%below
\def\section{%
	\@startsection{section}{1}{\z@}
	{-15\p@ plus -3\p@}{5\p@}
	{\reset@font\raggedright\large\scshape}}
\def\subsection{%
	\@startsection{subsection}{2}{\z@}
	{-15\p@ plus -2\p@}{5\p@}
	{\reset@font\raggedright\large\itshape}}
\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}
	{-15\p@ plus -1\p@}{5\p@}
	{\reset@font\normalsize\bfseries}}

%\def\section{%
%	\@startsection{section}{1}{\z@}
%	{-15\p@ plus -3\p@}{5\p@}
%	{\reset@font\normalsize\raggedright\MakeUppercase}}
%\def\subsection{%
%	\@startsection{subsection}{2}{\z@}
%	{-15\p@ plus -2\p@}{5\p@}
%	{\reset@font\raggedright\normalsize\bfseries\mathversion{bold}}}
%\def\subsubsection{%
%	\@startsection{subsubsection}{3}{\z@}
%	{-15\p@ plus -1\p@}{5\p@}
%	{\reset@font\normalsize\itshape}}
%
%% \def\paragraph{%
%%   \@startsection{paragraph}{4}{\z@}
%%   {-12\p@ plus -1\p@}{-1em}
%%   {\reset@font\raggedright\helvetica\itshape}}

% ********************
% Figures and tables *
% ********************

% Table and array parameters
\setlength\arraycolsep{.5em}
\setlength\tabcolsep{.5em}
\setlength\arrayrulewidth{.5pt}
\setlength\doublerulesep{2.5pt}
%\setlength\extrarowheight{\z@}
\renewcommand\arraystretch{1}


\newlength{\abovecaptionskip}
\newlength{\belowcaptionskip}
\setlength{\abovecaptionskip}{5pt}
\setlength{\belowcaptionskip}{3\p@}%

\long\def\@makecaption#1#2{\vspace{\abovecaptionskip}%
	\begingroup%
	\small%
%	\footnotesize%
	\leftskip=0pt plus 1fil  % use \setlength in LaTeX
	\rightskip=-\leftskip
	\parfillskip=0pt plus 2fil
	{#1.}\enskip{#2}\par%
	\endgroup}%

\long\def\@tablecaption#1#2{%
	\begingroup
	\small
%	\footnotesize%
	\leftskip=0pt plus 1fil  % use \setlength in LaTeX
	\rightskip=-\leftskip
	\parfillskip=0pt plus 2fil
	\textbf{#1.}\enskip{\bf#2\strut\par}
	\endgroup\vspace{\belowcaptionskip}}

% Table rules
\def\toprule{\noalign{\ifnum0=`}\fi\hrule \@height 0.5pt \hrule \@height 6pt \@width 0pt \futurelet
	\@tempa\@xhline\noalign{\vskip-1.5\p@}}
\def\midrule{\noalign{\vskip-3.5\p@}\noalign{\ifnum0=`}\fi \hrule \@height 6.75pt \@width 0pt \hrule \@height 0.5pt
	\hrule \@height 6pt \@width 0pt \futurelet \@tempa\@xhline\noalign{\vskip-1.5\p@}}
\def\botrule{\noalign{\vskip-2.5\p@}\noalign{\ifnum0=`}\fi \hrule \@height 5.75pt \@width 0pt \hrule \@height 0.5pt \futurelet
	\@tempa\@xhline\noalign{\vskip.5\p@}}
\def\hrulefill{\leavevmode\leaders\hrule height .5pt\hfill\kern\z@}

\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\def\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table~\thetable}
\def\table{\let\@makecaption\@tablecaption\let\source\tablesource\@float{table}}
\def\endtable{\end@float}
\@namedef{table*}{\let\@makecaption\@tablecaption\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\newif\if@rotate \@rotatefalse
\newif\if@rotatecenter \@rotatecenterfalse
\def\rotatecenter{\global\@rotatecentertrue}
\def\rotateendcenter{\global\@rotatecenterfalse}
\def\rotate{\global\@rotatetrue}
\def\endrotate{\global\@rotatefalse}
\newdimen\rotdimen
\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
		#1 neg exch neg exch translate}}
\def\rotfinish{\special{ps: currentpoint grestore moveto}}
\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
	\hbox to \rotdimen{\vbox to\wd#1{\vskip \wd#1
			\rotstart{270 rotate}\box #1\vss}\hss}\rotfinish}
\def\rotr#1{\rotdimen=\ht #1\advance\rotdimen by \dp#1
	\hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
			\rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}

\newdimen\tempdime
\newbox\temptbox

% From ifmtarg.sty
% Copyright Peter Wilson and Donald Arseneau, 2000
\begingroup
\catcode`\Q=3
\long\gdef\@ifmtarg#1{\@xifmtarg#1QQ\@secondoftwo\@firstoftwo\@nil}
\long\gdef\@xifmtarg#1#2Q#3#4#5\@nil{#4}
\long\gdef\@ifnotmtarg#1{\@xifmtarg#1QQ\@firstofone\@gobble\@nil}
\endgroup

\def\tablesize{\@setfontsize\tablesize{8\p@}{10\p@}}

\newenvironment{processtable}[3]{\setbox\temptbox=\hbox{{\tablesize #2}}%
	\tempdime\wd\temptbox\@processtable{#1}{#2}{#3}{\tempdime}}
{\relax}

\newcommand{\@processtable}[4]{%
	\if@rotate
	\setbox4=\vbox to \hsize{\vss\hbox to \textheight{%
			\begin{minipage}{#4}%
				\@ifmtarg{#1}{}{\caption{#1}}{\tablesize #2}%
				\vskip8\p@\noindent%
				\parbox{#4}{\fontsize{11}{12}\selectfont #3\par}%
		\end{minipage}}\vss}%
	\rotr{4}
	\else
	\hbox to \hsize{\hss\begin{minipage}[t]{#4}%
			\vskip2.9pt
			\@ifmtarg{#1}{}{\caption{#1}}{\tablesize #2}%
			\vskip6\p@\noindent
			\parbox{#4}{\fontsize{10}{11}\selectfont #3\par}%
		\end{minipage}\hss}\fi}%

% ******************************
% List numbering and lettering *
% ******************************
\def\labelenumi{{\rm\arabic{enumi}.}}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{{\rm\alph{enumii}.}}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{{\rm(\arabic{enumiii})}}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{{\rm(\arabic{enumiv})}}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{{\small$\bullet$}}
\def\labelitemii{{\small$\bullet$}}
\def\labelitemiii{{\small$\bullet$}}
\def\labelitemiv{{\small$\bullet$}}

\def\@listI{\leftmargin\leftmargini \topsep\medskipamount}
\let\@listi\@listI
\@listi
\def\@listii{\topsep\z@\leftmargin\leftmarginii}
\def\@listiii{\leftmargin\leftmarginiii \topsep\z@}
\def\@listiv{\leftmargin\leftmarginiv \topsep\z@}
\def\@listv{\leftmargin\leftmarginv \topsep\z@}
\def\@listvi{\leftmargin\leftmarginvi \topsep\z@}

\setlength{\leftmargini}{\z@}
\setlength{\leftmarginii}{\z@}
\setlength{\leftmarginiii}{\z@}
\setlength{\leftmarginiv}{\z@}

% Changes to the list parameters for enumerate
\def\enumargs{%
	\partopsep     \z@
	\itemsep       3\p@
	\parsep        \z@
	\labelsep      0.5em
	\listparindent \parindent
	\itemindent    \z@
}

\def\enumerate{%
	\@ifnextchar[{\@numerate}{\@numerate[0]}}

\def\@numerate[#1]{%
	\ifnum \@enumdepth >3 \@toodeep\else
	\advance\@enumdepth \@ne
	\edef\@enumctr{enum\romannumeral\the\@enumdepth}
	\list{\csname label\@enumctr\endcsname}{%
		\enumargs
		\setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@enumdepth\endcsname}
		\usecounter{\@enumctr}
		\settowidth\labelwidth{#1}
		\addtolength{\leftmargin}{\labelwidth}
		\addtolength{\leftmargin}{\labelsep}
		\def\makelabel##1{\hss \llap{##1}}}%
	\fi
}
\let\endenumerate\endlist

% Changes to the list parameters for itemize
\def\itemargs{%
	\partopsep     \z@
	\itemsep       \z@
	\parsep        \z@
	\labelsep      1em
	\rightmargin   \z@
	\listparindent \parindent
	\itemindent    \z@
}

\def\itemize{%
	\@ifnextchar[{\@itemize}{\@itemize[$\bullet$]}}

\def\@itemize[#1]{%
	\ifnum \@itemdepth >3 \@toodeep\else
	\advance\@itemdepth \@ne
	\edef\@itemctr{item\romannumeral\the\@itemdepth}
	\list{\csname label\@itemctr\endcsname}{%
		\itemargs
		\setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@itemdepth\endcsname}
		\settowidth\labelwidth{#1}
		\addtolength{\leftmargin}{\labelwidth}
		\addtolength{\leftmargin}{\labelsep}
		\def\makelabel##1{\hss \llap{##1}}}%
	\fi
}
\let\enditemize\endlist

\newenvironment{unlist}{%
	\begin{list}{}%
		{\setlength{\labelwidth}{\z@}%
			\setlength{\labelsep}{\z@}%
			\setlength{\topsep}{\medskipamount}%
			\setlength{\itemsep}{3\p@}%
			\setlength{\leftmargin}{2em}%
			\setlength{\itemindent}{-2em}}}
	{\end{list}}


% ***********************
% Quotes and Quotations *
% ***********************
\def\quotation{\par\begin{list}{}{
			\setlength{\topsep}{\medskipamount}
			\setlength{\leftmargin}{1em}%
			\setlength{\rightmargin}{\z@}%
			\setlength\labelwidth{0pt}%
			\setlength\labelsep{0pt}%
			\listparindent\parindent}%
		\item[]}
	\def\endquotation{\end{list}}
\let\quote\quotation
\let\endquote\endquotation

\skip\@mpfootins = \skip\footins
\fboxsep=6\p@
\fboxrule=1\p@

% *******************
% Table of contents *
% *******************
\newcommand\@pnumwidth{4em}
\newcommand\@tocrmarg{2.55em plus 1fil}
\newcommand\@dotsep{1000}
\setcounter{tocdepth}{4}

\def\numberline#1{\hbox to \@tempdima{{#1}}}

\def\@authortocline#1#2#3#4#5{%
	\vskip 1.5\p@
	\ifnum #1>\c@tocdepth \else
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		{\itshape #4}\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil}%
		\par}%
	\fi}

\newcommand*\l@author{\@authortocline{2}{0pt}{30pt}}
\newcommand*\l@section{\@dottedtocline{3}{11pt}{20pt}}
\newcommand*\l@subsection{\@dottedtocline{4}{31pt}{29pt}}
\newcommand*\l@subsubsection[2]{}



% ***********
% Footnotes *
% ***********

\def\footnoterule{\noindent\rule{\columnwidth}{0.5pt}\vskip5\p@}
\def\@makefnmark{\@textsuperscript{\normalfont\@thefnmark}}%
\newcommand\@makefntext[1]{\noindent{\@makefnmark}\enskip#1}

% ***********
% References *
% ***********

\providecommand{\newblock}{}
\newenvironment{thebibliography}[1]{
	\section{\refname}
	%\small % this seems to have no effect?
	\topsep 0pt\partopsep 0pt
	\begingroup\list{\arabic{enumi}.}
	{\itemsep\z@
		\setlength{\@tempdima}{15\p@}%
		\settowidth{\labelwidth}{#1}%
		\addtolength{\@tempdima}{-\labelwidth}%
		\ifdim\@tempdima<6\p@
		\setlength{\labelsep}{6\p@}%
		\else
		\setlength{\labelsep}{\@tempdima}%
		\fi
		\setlength{\leftmargin}{\labelwidth}%
		\addtolength{\leftmargin}{\labelsep}%
		\def\makelabel##1{\hbox to \labelwidth{\hss{##1}}}%
		\usecounter{enumi}
	}
	}
{\endlist\endgroup}

% **********
% Appendix *
% **********
\newif\ifappend % Are we in the Appendix?
\def\appendix{\par
	\setcounter{section}{0}
	\setcounter{subsection}{0}
	\appendtrue
}

%Math parameters

\setlength{\jot}{5\p@}
\mathchardef\@m=1500   % adapted value
\def\@mathmargin{1em}%

\def\frenchspacing{\sfcode`\.\@m \sfcode`\?\@m \sfcode`\!\@m
	\sfcode`\:\@m \sfcode`\;\@m \sfcode`\,\@m}

% Theorems
\def\th@plain{%
	%%  \let\thm@indent\noindent % no indent
	\thm@headfont{\quad\scshape}% heading font is bold
	\thm@notefont{\upshape\mdseries}% same as heading font
	\thm@headpunct{.}% no period after heading
	\thm@headsep 5\p@ plus\p@ minus\p@\relax
	%%  \let\thm@swap\@gobble
	%%  \thm@preskip\topsep
	%%  \thm@postskip\theorempreskipamount
	\itshape % body font
}

\vbadness=9999
\tolerance=9999
\doublehyphendemerits=10000
\doublehyphendemerits 640000   % corresponds to badness 800
\finalhyphendemerits  1000000  % corresponds to badness 1000

\flushbottom
\frenchspacing
\ps@headings
\twocolumn

% Screen PDF compatability
\newcommand{\medline}[1]{%
	\unskip\unskip\ignorespaces}

\language=2
\pdfminorversion=6

\hyphenation{Figure Table Figures Tables figure table figures tables}

\renewenvironment{proof}[1][\proofname]{\par
	\normalfont \topsep6\p@\@plus6\p@\relax
	\labelsep 0.5em
	\trivlist
	\item[\hskip\labelsep\hskip1em\textsc{#1}.]\ignorespaces
}{\endtrivlist\@endpefalse}

%%Different Bonds

\def\sbond{\ensuremath{\raise.25ex\hbox{${-}\!\!\!\!{-}$}}\kern -.9pt}
\def\dbond{\ensuremath{\raise.25ex\hbox{=$\!$=}}}
\def\tbond{\ensuremath{\raise.20ex\hbox{${\equiv}\!\!\!{\equiv}$}}}

\renewcommand{\dag}{{\mathversion{normal}$^{\dagger}$}}

\endinput
