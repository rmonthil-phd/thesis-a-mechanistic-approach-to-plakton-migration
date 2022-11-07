%% ****************************************************
%% **                                                **
%% **            My PhD thesis template,             **
%% **             largely adapted from:              **
%% **                                                **
%% **              University of Malta               **
%% **                                                **
%% **    LaTeX Template for Thesis/Dissertation/FYP  **
%% **                                                **
%% **              Dr Jean-Paul Ebejer               **
%% **            jean.p.ebejer@um.edu.mt             **
%% **                                                **
%% **     "Build something which will outlast you"   **
%% **          (... amongst other things)            **
%% **                                                **
%% ****************************************************

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{um}[2018/05/01-2022/03/17 v2.1 University of Malta, Dissertation/FYP/Thesis Template]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper,final]{memoir}


%% **************** Packages (Start) *********************

\RequirePackage[utf8]{inputenc}      % Required for inputting international characters
\RequirePackage[T1]{fontenc}         % Output font encoding for international characters
\RequirePackage{mathpazo}            % Use the Palatino font by default
\RequirePackage[english]{babel}      % Load babel if you're unsure about the default language - mostly to be safe
\RequirePackage{xcolor}              % For named colors
\RequirePackage{eso-pic}             % required to place huge uni logo at the back - on title page
\RequirePackage{datetime}			 % For Current Month and Year (cover page)
\newdateformat{monthyeardate}{\monthname[\THEMONTH], \THEYEAR}

\RequirePackage[pdftex]{graphicx}    % For pictures
\RequirePackage{amssymb}             % At least, for black squares in bullet list
\RequirePackage[pdfusetitle]{hyperref}             % For hyperreferences
\RequirePackage[authoryear,semicolon,sort]{natbib} % for (Ebejer, 2012; Alba, 2013) kind of references; removed 'square' option after viva examination comments
\RequirePackage{floatpag}			 % Used to hide page number on pages which contain only floats ... put a \thisfloatpagestyle{empty} in the float env, e.g. figure ...
\RequirePackage{longtable}           % For very long tables
\RequirePackage{pdflscape}			 % For landscape tables (instead of portrait)
\RequirePackage{amsthm}			 % For theorems, proof, lemma
\RequirePackage{listings}			 % For code listings
\usepackage[width=.95\textwidth]{caption} % set the width of the captions

% \RequirePackage{algorithm}
% \RequirePackage{algpseudocode}
\RequirePackage[ruled]{algorithm2e}		% use algorithm2e instead of algorithm only, as the former is more customizable
\RequirePackage{courier}

\usepackage[defaultsans]{lato}		 % Sans font to use
\usepackage[printonlyused,withpage]{acronym}

%% ****************** Packages (End) *********************


%% ************ UM Definitions (Start) *****************

\definecolor{OxfordBlue}{rgb}{0,0.106,0.329}   % Color
\definecolor{UMRed}{rgb}{1.0,0.5,0.5}   % UM Logo Color

\colorlet{DissertationColor}{UMRed}   

% Setup choosen University of Malta crest/logo
%\def\logo{{\includegraphics[width=30mm]{umlogo_crest_red}}}

% The year and term the thesis is submitted 
\def\degreeDate#1{\gdef\@degreeDate{#1}}
% The full (unabbreviated) name of the degree
\def\degreeName#1{\gdef\@degreeName{#1}}
% The name of your supervisor
\def\supervisor#1{\gdef\@supervisor{#1}}
% The name of your co-supervisor
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
% The name of your department (e.g. Computer Science, Statistics, Biochemistry, AI)
\def\department#1{\gdef\@department{#1}}
% The name of your faculty
\def\faculty#1{\gdef\@faculty{#1}}
% The name of your faculty
\def\subjectcode#1{\gdef\@subjectcode{#1}}
% The tagline
\def\tagline#1{\gdef\@tagline{#1}}
% The document type, e.g. a dissertation or a thesis
\def\doctype#1{\gdef\@doctype{#1}}
\def\authorID#1{\gdef\@authorID{#1}}

%% ************* UM Definitions (End) ******************




%% ************ Document Options (Start) *****************

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolour},   
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\ttfamily\footnotesize,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}

\lstset{style=mystyle}

\OnehalfSpacing                                  % One and a half line spacing

\setlength{\headsep}{1.5cm}                      % Add space between the header and text

\nouppercaseheads								 % Don't convert titles to Uppercase
\makepagestyle{umpage}

												 % This travesty is due to a bug in memoir, see https://tex.stackexchange.com/questions/468922/oneside-in-memoir-causing-header-trouble
\makeevenhead{umpage}{\color{gray}\sffamily\small\leftmark}{}{\color{gray}\sffamily\small\rightmark}
\makeoddhead{umpage}{\color{gray}\sffamily\small\leftmark}{}{\color{gray}\sffamily\small\rightmark}
\makeevenfoot{umpage}{}{\thepage}{}  			 % UM pagestyle, put page at bottom
\makeoddfoot{umpage}{}{\thepage}{}
\makeheadfootruleprefix{umpage}{\color{gray}}{}
\makeheadrule{umpage}{\textwidth}{\normalrulethickness}
\makepsmarks{umpage}{%
	\createmark{chapter}{left}{shownumber}{\@chapapp\ }{. \ }
	\createmark{section}{right}{shownumber}{}{. \ }
}

\copypagestyle{umpageback}{umpage}
\makeevenhead{umpageback}{\color{gray}\sffamily\small\leftmark}{}{}
\makeoddhead{umpageback}{}{}{\color{gray}\sffamily\small\rightmark}


\setlrmarginsandblock{3.7cm}{2.5cm}{*}           % Set the page margins (for one and two sided docs) 
\checkandfixthelayout                            % Put layout into effect

\graphicspath{{./images/}}                       % Where to look for images (paths) ...
\DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg} % Graphics extensions to load

%% other possible values: bianchi, bringhurst, brotherton, chappell, crosshead, culver, dash, demo2, demo3, dowding, ell (default), ger, komalike, lyhne, madsen, ntglike, pedersen, southall, tandh, thatcher, veelo, verville, wilsondob
\chapterstyle{ell} % how to draw the different chapter headings


\renewcommand*{\chapnumfont}{\sffamily\HUGE\bfseries\color{DissertationColor}}  % Chapter titles should be normal
\renewcommand*{\chaptitlefont}{\sffamily\HUGE\bfseries\color{DissertationColor}}
\setsecheadstyle{\sffamily\LARGE\bfseries\color{DissertationColor}}% Set \section style
\setsubsecheadstyle{\sffamily\Large\color{DissertationColor}}% Set \subsection style
\setsubsubsecheadstyle{\sffamily\large\color{DissertationColor}}% Set \subsection style
\setsecnumformat{\csname the#1\endcsname\enskip{\color{gray}\textbar}\enskip}

\newsubfloat{figure} % declares a new subfloat element which allows to use \subbottom commands

\renewcommand{\labelitemi}{\color{DissertationColor}\scriptsize$\blacksquare$}

\addto{\captionsenglish}{\renewcommand{\bibname}{References}} % because we are using babel we need this
                                                              % instead of just redefining bibname
\setlength{\bibitemsep}{\onelineskip}

\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}} % to set array stretch within tables

\hypersetup{%
    colorlinks=false,
%    linkcolor=DissertationColor,
%    citecolor=DissertationColor,
%    urlcolor=DissertationColor,
%    filecolor=magenta, 
    pdfborder={0 0 0},    
}

\feetbelowfloat % we want the footnotes below floats, not wierdly above

\setsecnumdepth{subsubsection}  % three level depth - chapter, section, subsection, subsubsection
\settocdepth{subsection}

\renewcommand*{\cftappendixname}{Appendix\space}
\newcommand{\removelinebreaks}[1]{%
	\begingroup\def\\{ }#1\endgroup}

% Controls space between one reference and the next
\setlength{\bibsep}{6.5pt}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}

%% ************* Document Options (End) ******************






%% *************** Environments (Start) ******************

%% *** Title Page (Start) ***
% background image
% taken from http://tug.org/pracjourn/2008-1/mori/mori.pdf
%\newcommand\AlCentroPagina[1]{%
%\AddToShipoutPicture*{\AtPageCenter{%
%\makebox(0,-50){\includegraphics[width=0.5\paperwidth]{#1}}}}}

% The front page
\renewcommand{\maketitle}
{\begingroup
\vspace*{-3.0cm}
\begin{center} %% logos partenaires
	\hspace*{-2.0cm}
	\begin{minipage}[c]{.23\linewidth}
		\centering\includegraphics[height=3em]{images/logo_centrale.pdf}
	\end{minipage}\hfill
	\begin{minipage}[c]{.22\linewidth}
		\centering\includegraphics[height=3em]{images/logo_irphe.pdf}
	\end{minipage}\hfill
	\begin{minipage}[c]{.05\linewidth}
		\centering\includegraphics[height=3em]{images/logo_cnrs.pdf}
	\end{minipage}\hfill
	\begin{minipage}[c]{.23\linewidth}
		\centering\includegraphics[height=3em]{images/logo_amu_excellence}
	\end{minipage}\hfill
	\begin{minipage}[c]{.2\linewidth}
		\centering\includegraphics[height=3em]{images/logo_erc.png}
	\end{minipage}\hfill
\end{center}
\vspace*{1.3cm}
\parbox[b][0.95\textheight][t]{0.13\textwidth}{\raggedleft{\hspace{-0.244\textwidth}\includegraphics[width=0.288\textwidth]{./images/front_page_image.pdf}}} %% this 0.95 is important, otherwise page overflows in next page
\hspace*{2ex}
\textcolor{DissertationColor}{\rule{2pt}{0.95\textheight}}
\hspace*{2ex}
\parbox[b][0.95\textheight][t]{0.8\textwidth}{
    \setlength{\parindent}{0pt}
    %%\fontfamily{pag}\selectfont
    \sffamily
    {\Huge\bfseries{\begin{Spacing}{1.05}\textcolor{DissertationColor}{\@title}\end{Spacing}}}
    \vspace*{2ex}
    {\Large\textit{\textcolor{DissertationColor}{\@tagline}}}\\[0.25cm]
    
    {\LARGE\bfseries \textsc{\@author}}\\[0.2cm]
    {\large \textbf{Ph.D. thesis} supervised by}
    \@ifundefined{@cosupervisor}{\@supervisor}{\textbf{\@supervisor} and \textbf{\@cosupervisor}}\\[0.75cm]
    {\large \textbf{Jury members:}}\\ %[0.0cm]
    {\normalsize
    	\def\arraystretch{1.3}
		\begin{tabular*}{\textwidth}{ l c r}
			\'E. CLIMENT & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Professor}, ENSEEIHT, IMFT, Toulouse\end{tabular}\def\arraystretch{1.3} & Rapporteur\\
			A. SEMINARA & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Professor}, unige, DICCA, Genova \end{tabular}\def\arraystretch{1.3} & Rapporteure\\
			M. DIBENEDETTO & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Assistant professor}, UW, \\ Mechanical Engineering, Washington \end{tabular}\def\arraystretch{1.3} & \'Examinatrice\\
			A. CELANI & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Research scientist}, ICTP, Trieste \end{tabular}\def\arraystretch{1.3}  & \'Examinateur\\
			M. KOEHL & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Professor}, University of California, \\ Integrative Biology, Berkeley \end{tabular}\def\arraystretch{1.3} & Invitée\\
			B. FAVIER & \textit{CR} CNRS, IRPHE, Marseille & Co-directeur\\
			C. ELOY & \def\arraystretch{1.0}\begin{tabular}{@{}c@{}}\textit{Professor}, Centrale Méditerranée, \\ IRPHE, Marseille \end{tabular}\def\arraystretch{1.3} & Directeur
		\end{tabular*}
		\def\arraystretch{1.0}
    }\\[0.5cm]
    {\normalsize Doctoral school: \textbf{\textcolor{DissertationColor}{ED 353}}: Sciences pour l’ingénieur:
    Mécanique, Physique, Micro et Nanoélectronique}\\[0.05cm]
    {\normalsize Student of \textbf{\textcolor{DissertationColor}{\@faculty}} working in the \textbf{\textcolor{DissertationColor}{\@department}} lab (also tutored by \textbf{\textcolor{DissertationColor}{Aix-Marseille Université}} and the \textbf{\textcolor{DissertationColor}{CNRS}}).}\\[0.05cm]
    %{\normalsize \textbf{Founded by} the European Research Council}\\[0.05cm]
    {\normalsize This project has received funding from the \textbf{\textcolor{DissertationColor}{European Research Council}} (ERC) under the European Union’s Horizon 2020 research and innovation programme (grant agreement No 834238).}\\[0.05cm]
    \vfill
    {\bfseries Defended on \@degreeDate}\\[0.1cm]
	\parbox[t]{0.80\linewidth}{\footnotesize\textit{A \@doctype\ submitted in partial fulfilment of the requirements for the degree of \@degreeName}.}    
}
\thispagestyle{empty}
\if@openright\cleardoublepage\else\clearpage\fi
\endgroup}
%% *** Title Page (End) ***

\newenvironment{acknowledgements}
{\renewcommand{\abstractname}{\Large\bfseries\sffamily\textcolor{DissertationColor}{Acknowledgements}}\abstract}
{\endabstract\if@openright\cleardoublepage\else\clearpage\fi}

\newenvironment{resumes}
{\renewcommand{\abstractname}{\Large\bfseries\sffamily\textcolor{DissertationColor}{Résumés}}\abstract}
{\endabstract\if@openright\cleardoublepage\else\clearpage\fi}
       
\addto{\captionsenglish}{\renewcommand{\abstractname}{\Large\bfseries\sffamily\textcolor{DissertationColor}{Abstract}}}

\newenvironment{dedication}
  {\clearpage           % we want a new page
   \thispagestyle{empty}% no header and footer
   \vspace*{\stretch{1}}% some space at the top 
   \itshape             % the text is in italics
   \raggedleft          % flush to the right margin
   \textcolor{DissertationColor}
  }
  {\par % end the paragraph
   \vspace{\stretch{3}} % space at bottom is three times that at the top
   \if@openright\cleardoublepage\else\clearpage\fi
  }       
       

% \renewenvironment{abstract}
% {\begin{alwayssingle} \thispagestyle{empty}
% \begin{center}
% \vspace*{0.5cm}
% {\large \bfseries \textcolor{DissertationColor}{Abstract}}
% \end{center}
% \singlespacing\enlargethispage{\baselineskip}}
% {\end{alwayssingle}}
% {\cleardoublepage\newgeometry{right=1.3cm,top=2.4cm,bottom=2cm}\pagestyle{empty}\begin{center}\bfseries\large\textcolor{OxfordBlue}\abstractname\end{center}\normalsize\onehalfspacing\begin{quotation}}{\end{quotation}\restoregeometry\cleardoublepage}


% STATEMENT OF ORIGINALITY
%
% The originality environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself appears in a quote environment, i.e. tabbed in at 
% both sides, and on its own page.

\newenvironment{originality}
{\clearpage
\vspace*{1.5cm}
\begin{center}
{\Large\bfseries\sffamily\textcolor{DissertationColor}{Affidavit}\par}
\end{center}
\vspace*{1.5cm}
{I, undersigned, Rémi Monthiller, %% First Name and Surname of the PhD student
hereby declare that the work presented in this manuscript is my own work, carried out under the scientific direction of Christophe Eloy and Benjamin Favier, %% First Name and Surname of the thesis director and if applicable of the co-thesis director
in accordance with the principles of honesty, integrity and responsibility inherent to the research mission. 

The research work and the writing of this manuscript have been carried out in compliance with both the french national charter for Research Integrity and the Aix-Marseille University charter on the fight against plagiarism.

This work has not been submitted previously either in this country or in aother country in the same or in a similar version to any other examination body. 
\par}
\vspace*{0.5cm}
Marseille, September 27, 2022
\begin{flushright}
	\includegraphics[width=0.13\linewidth]{images/signature.pdf} \hspace*{0.25cm}
\end{flushright} % signature
%\vspace*{1.5cm}
% \begin{center}
% \renewcommand\arraystretch{1.5}
% \begin{tabular}{lc}
% {\bfseries Candidate} & \@author \\[15mm]
% {\bfseries Signed} & \includegraphics[width=0.15\linewidth]{images/signature.pdf} \\
% {\bfseries Date} & \today \\
% \end{tabular}
% \end{center}
\if@openright\cleardoublepage\else\clearpage\fi}

%% This was updated to the official Statement of Originality (Authentication form)

% \newenvironment{originality}
% {\clearpage\thispagestyle{empty}
% \begin{figure}[h]
	% \includegraphics[width=2.5in]{./images/logos.pdf}
% \end{figure}
% \vspace{3mm}
% {\noindent\Large\bfseries\sffamily\textcolor{DissertationColor}{Declaration by Postgraduate Students}}\\ %% FIXME this will have to change if not postgraduate ...
% 
% {\setlength{\parindent}{0em}
	% 
% \textbf{(a) Authenticity of Dissertation}\vspace{3mm}
% 
% \noindent I hereby declare that I am the legitimate author of this Dissertation and that it is my original work.
% 
% No portion of this work has been submitted in support of an application for another degree or qualification of this or any other university or institution of higher education.
% 
% I hold the University of Malta harmless against any third party claims with regard to copyright violation, breach of confidentiality, defamation and any other third party right infringement.\\
% 
% \textbf{(b) Research Code of Practice and Ethics Review Procedures}\vspace{3mm}
% 
% I declare that I have abided by the University’s Research Ethics Review Procedures.
% 
% As a Master’s student, as per Regulation 58 of the General Regulations for University Postgraduate Awards, I accept that should my dissertation be awarded a Grade A, it will be made publicly available on the University of Malta Institutional Repository.}\\[5mm]
% %%\newcolumntype{L}{>{\arraybackslash}m{2.5in}}
% \bgroup
% \def\arraystretch{1.2}%
% \begin{tabular}{lp{3.3in}}
% {\bfseries Faculty/Institute/Centre/School} & \@faculty \\
% {\bfseries Degree} & \@degreeName \\
% {\bfseries Title}  & \begin{hyphenrules}{nohyphenation}\removelinebreaks{\@title}\end{hyphenrules} \\
% {\bfseries Candidate \@ifundefined{@authorID}{}{(Id.)}} & \@author\ \@ifundefined{@authorID}{}{(\@authorID)} \\[0.7in]
% {\bfseries Signature of Student} & \makebox[2in]{\hrulefill} \\
% {\bfseries Date} & \today \\
% \end{tabular}
% \mbox{}\vfill
% \egroup
% \noindent 08.02.2018
% \if@openright\cleardoublepage\else\clearpage\fi}



% COPYRIGHT
%
% The originality environment puts a large, bold, centered 
% "Statement of originality" label at the top of the page. The statement 
% of originality itself appears in a quote environment, i.e. tabbed in at 
% both sides, and on its own page.

% \newenvironment{copyrightenv}
% {\clearpage
	% ~\vfill
	% \thispagestyle{empty}
	% 
	% \begin{figure}[h]
		% \includegraphics[width=2.5in]{./images/logos.pdf}
	% \end{figure}
	% 
	% \noindent Copyright \textcopyright\the\year\ University of Malta\\ % Copyright notice
	% 
	% \noindent \textsc{www.um.edu.mt}\\ % URL
	% 
	% \noindent \textit{First edition, \today} % Printing/edition date
	% 
	% %% \noindent Licensed under the Creative Commons Attribution-NonCommercial 3.0 Unported License (the ``License''). You may not use this file except in compliance with the License. You may obtain a copy of the License at \url{http://creativecommons.org/licenses/by-nc/3.0}. Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \textsc{``as is'' basis, without warranties or conditions of any kind}, either express or implied. See the License for the specific language governing permissions and limitations under the License.\\ % License information
	% \if@openright\cleardoublepage\else\clearpage\fi}

\newenvironment{copyrightenv}
{\clearpage
	~\vfill
	\thispagestyle{empty}
	
	\begin{center}
		\begin{minipage}[c]{0.25\linewidth}
			\includegraphics[height=35px]{images/by}
		\end{minipage}\hfill
	\end{center}
	
	\noindent This work is licensed under a \href{https://creativecommons.org/licenses/by/4.0/deed.fr}{Creative Commons Attribution 4.0 International License}.
	\if@openright\cleardoublepage\else\clearpage\fi}


% Conditions for Equations Environment
%
\newenvironment{conditionsenv*}
{\par\vspace{\abovedisplayskip}\noindent
	\tabularx{\columnwidth}{>{$}l<{$} @{${}={}$} >{\raggedright\arraybackslash}X}}
{\endtabularx\par\vspace{\belowdisplayskip}}

%% **************** Environments (End) *******************
