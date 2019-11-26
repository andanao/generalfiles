\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_format}[2019/11/26 Custom CV Class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{nopageno}
 
\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\titlerule]
 
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
 
\newcommand{\datedsection}[2]{%
  \section[\textbf{#1}]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
 
\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}%
}
 
\newcommand\contact[3]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
        }%
    }%
}
 
\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}
 
\newcommand{\workitems}[4]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \item #4
    \end{itemize}%
}