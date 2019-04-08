\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{problem-set}

%%%% DECLARE OPTIONS %%%%%

% default behavior: don't show solutions
\newif\ifsolutions
\solutionsfalse
\DeclareOption{solutions}{\solutionstrue}


% once all options are defined
\ProcessOptions\relax

\LoadClass{article}

%%%% PACKAGES %%%%%

% load required packages
\RequirePackage{jeff-style}
\RequirePackage{mdframed}
\RequirePackage{environ}
\RequirePackage{fullpage}
\RequirePackage{parskip}
\RequirePackage{enumitem}
\RequirePackage{amsmath}
\RequirePackage{tikz}

\usetikzlibrary{trees}


%%%% CODE %%%%


% solutions behavior
\ifsolutions
\newenvironment{soln}[1][1ex]
  {\par\bigskip\vspace{#1}
   \begin{mdframed}[leftmargin=10,
     				rightmargin=-10pt,
				backgroundcolor=white,
				hidealllines=true,
				leftline=true,
     				innertopmargin=4pt,
				splittopskip=\topskip,
				skipbelow=\baselineskip,
				innerbottommargin=0pt
				]
     \vspace{-#1} \textit{Solution.} \ignorespaces}
  {\end{mdframed}}
\else
\NewEnviron{killcontents}{}
\let\soln\killcontents	
\let\endsoln\endkillcontents
\fi

