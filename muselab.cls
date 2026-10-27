%% muselab.cls --- 橋田ゼミ用レポート・卒業論文クラス
%% 2026-10-27 v1.0 公開前候補版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{muselab}[2026/10/27 v1.0 Muse Lab paper template]

\newif\ifmuselab@thesis
\DeclareOption{report}{\muselab@thesisfalse}
\DeclareOption{thesis}{\muselab@thesistrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jlreq}}
\ExecuteOptions{report}
\ProcessOptions\relax
\PassOptionsToClass{a4paper,jafontsize=13Q,baselineskip=21H,line_length=26zw,number_of_lines=47,column_gap=8mm,twocolumn}{jlreq}
\LoadClass{jlreq}

\RequirePackage[dvipdfmx]{graphicx}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{url}

\makeatletter
\newcommand{\studentid}[1]{\gdef\muselab@studentid{#1}}
\newcommand{\affiliation}[1]{\gdef\muselab@affiliation{#1}}
\newcommand{\supervisor}[1]{\gdef\muselab@supervisor{#1}}
\newcommand{\submissiondate}[1]{\gdef\muselab@submissiondate{#1}}
\gdef\muselab@studentid{}
\gdef\muselab@affiliation{福知山公立大学 情報学部情報学科}
\gdef\muselab@supervisor{橋田光代}
\gdef\muselab@submissiondate{\today}

\renewcommand{\maketitle}{%
  \onecolumn
  \thispagestyle{empty}%
  \begin{center}
    \vspace*{\ifmuselab@thesis 45mm\else 18mm\fi}%
    {\LARGE\bfseries\@title\par}%
    \vspace{15mm}%
    {\large\@author\par}%
    \ifx\muselab@studentid\@empty\else
      \vspace{4mm}{\normalsize\muselab@studentid\par}%
    \fi
    \vspace{10mm}%
    {\normalsize\muselab@affiliation\par}%
    \ifmuselab@thesis
      \vfill
      {\large 卒業論文\par}
      \vspace{8mm}
      {\large 指導教員　\muselab@supervisor\par}
      \vspace{8mm}
      {\normalsize\muselab@submissiondate\par}
      \vspace{10mm}
    \fi
  \end{center}
  \clearpage
}
\providecommand{\bibname}{参考文献}
\makeatother
\endinput
