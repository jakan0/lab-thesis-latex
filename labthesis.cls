% -----------------------------------------------------------------------------
% LAB University of Applied Sciences Thesis
% Janne K (jakan0)
%
% USAGE:  (LaTeX2e)  \documentclass{labthesis}
%
% Modifies {book} class, so that the document is formatted according to the
% LAB University of Applied Sciences formatting and presentation guidelines for
% thesis reports version 170822.
% -----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labthesis}[2022/11/28 v1.0 LAB Thesis class]
\LoadClass[11pt,a4paper,titlepage,oneside,openany]{book}

% pdf/a support
\RequirePackage{colorprofiles}
\RequirePackage[a-2b,mathxmp]{pdfx}[2018/12/22]
\hypersetup{hidelinks}

% language support
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[main=british,finnish]{babel}
\frenchspacing

% font
\RequirePackage{helvet}
\renewcommand*{\familydefault}{\sfdefault}

% line spacing
\RequirePackage{setspace}
\setstretch{1.395}

% abstract
\RequirePackage{tabularx}
\RequirePackage{lastpage}
\RequirePackage{xifthen}

% reconfigure counters as continuous
\RequirePackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}

% citations
\RequirePackage{natbib}
\bibliographystyle{labthesis}
\setcitestyle{aysep={}}

% plain header, no footer
\pagestyle{myheadings}

% content margins
\RequirePackage[
  tmargin=30mm,
  rmargin=25mm,
  bmargin=27mm,
  lmargin=30mm,
]{geometry}

% paragraph
\RequirePackage[
  indent=0mm,
  skip=3mm,
]{parskip}

% figures and tables
\RequirePackage[noabbrev]{cleveref}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}
\captionsetup{
  justification   = raggedright,
  labelsep        = period,
  singlelinecheck = false,
}

% urls with line breaks
\RequirePackage{xurl}
\urlstyle{same}
\def\UrlNoBreaks{\do\:}

% -----------------------------------------------------------------------------
% overwrite existing commands
% -----------------------------------------------------------------------------
% add bibliography entry to table of contents
\renewcommand*{\bibsection}{
  \chapter*{\bibname}
  \addcontentsline{toc}{chapter}{\bibname}
}

% heading 1
\renewcommand*{\chapter}{
  \@startsection{chapter}
    {1}     % level
    {0mm}   % indent
    {4mm}   % beforeskip
    {4mm}   % afterskip
  {\noindent\large\textbf}
}

% heading 2
\renewcommand*{\section}{
  \@startsection{section}
    {1}     % level
    {0mm}   % indent
    {4mm}   % beforeskip
    {4mm}   % afterskip
  {\noindent\large}
}

% heading 3
\renewcommand*{\subsection}{
  \@startsection{subsection}
    {1}     % level
    {0mm}   % indent
    {4mm}   % beforeskip
    {4mm}   % afterskip
  {\noindent\large}
}

% -----------------------------------------------------------------------------
% additonal commands
% -----------------------------------------------------------------------------
% custom section names
\addto{\captionsbritish}{
  \renewcommand*{\contentsname}{Contents}
  \renewcommand*{\bibname}{References}
}

% full paragraph citations
\newcommand*{\citepara}[2][]{
  (\citealt[#1]{#2}.)
}

% reference style tweaks
\newcommand*{\urlprefix}{Available at }
\newcommand*{\doi}[1]{doi:\url{#1}}

% fix a compilation error with references without a year
\def\citeauthoryear#1#2#3(@)(@)\@nil#4{
  \NAT@wrout{\the\c@NAT@ctr}{#3}{#2}{#1}{#4}
}

% -----------------------------------------------------------------------------
% commands for additional metadata
% -----------------------------------------------------------------------------
\def\@university{LAB University of Applied Sciences}
\newcommand*{\university}[1]{
  \def\@university{#1}
}

\def\@publicationtype{\empty}
\newcommand*{\publicationtype}[1]{
  \def\@publicationtype{#1}
}

\def\@degree{\empty}
\newcommand*{\degree}[1]{
  \def\@degree{#1}
}

\def\@fieldofstudy{\empty}
\newcommand*{\fieldofstudy}[1]{
  \def\@fieldofstudy{#1}
}

\def\@subtitle{\empty}
\newcommand*{\subtitle}[1]{
  \def\@subtitle{#1}
}

\def\@keywords{\empty}
\newcommand*{\keywords}[1]{
  \def\@keywords{#1}
}

\def\@altpublicationtype{\empty}
\newcommand*{\altpublicationtype}[1]{
  \def\@altpublicationtype{#1}
}

\def\@alttitle{\empty}
\newcommand*{\alttitle}[1]{
  \def\@alttitle{#1}
}

\def\@altsubtitle{\empty}
\newcommand*{\altsubtitle}[1]{
  \def\@altsubtitle{#1}
}

\def\@altdegree{\empty}
\newcommand*{\altdegree}[1]{
  \def\@altdegree{#1}
}

\def\@altfieldofstudy{\empty}
\newcommand*{\altfieldofstudy}[1]{
  \def\@altfieldofstudy{#1}
}

\def\@altkeywords{\empty}
\newcommand*{\altkeywords}[1]{
  \def\@altkeywords{#1}
}
