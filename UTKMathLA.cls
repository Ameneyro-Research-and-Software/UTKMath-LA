\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UTKMathLA}[2025/02/21 This class provides style and format to create learning activities for the math 123 course and possibly others.]

\PassOptionsToClass{fleqn,twoside,12pt}{article}
\LoadClass[fleqn,twoside,12pt]{article}

%-------------- Load Packages -----------------------
\RequirePackage{geometry}
\RequirePackage{fancyhdr}

%--------------- Course Information ------------------
\newcommand{\GetCourse}{Math 123}
\newcommand{\GetAsignmentType}{Learning Activity}
\newcommand{\GetDirections}{Write directions with \texttt{\textbackslash SetDirections\{\}} command}
\newcommand{\SetCourse}[1]{\renewcommand{\GetCourse}{#1}}
\newcommand{\SetAsignmentType}[1]{\renewcommand{\GetAsignmentType}{#1}}
\newcommand{\SetDirections}[1]{\renewcommand{\GetDirections}{#1}}

%--------------- Headers and Page Style ------------------
\geometry{
  letterpaper,
  inner = 0.75in,
  outer = 0.5in,
  top = 0.85in,
  bottom = 0.75in,
  marginparwidth = 0.75in,
  headheight = 15pt
}

\makeatletter
\fancypagestyle{la-page-style}{
  \fancyhead[L]{{\GetCourse \ \GetAsignmentType}}
  \fancyhead[C]{{\@author}}
  \fancyhead[R]{{\@title}}
}

\fancypagestyle{title-page-style}{
  \fancyhead[L]{}
  \fancyhead[C]{}
  \fancyhead[R]{}
  \renewcommand{\headrulewidth}{0pt}
}

\newcommand{\MakeTitle}{
  \thispagestyle{title-page-style}
  \begin{center}
    {\Large \@title}
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}} \\
    \vspace{0.25in}
    \textsc{Name:} \underline{\hspace{2.5in}}
    \hfil
    \textsc{Net ID:} \underline{\hspace{2.5in}} \\
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}} \\
    \vspace{0.1in}
    \textbf{Directions:} \GetDirections \\
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}}
  \end{center}
}
\makeatother

\pagestyle{la-page-style}
