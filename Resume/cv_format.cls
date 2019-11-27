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
  {\large\raggedright}
  {}{0em}
  {}

\titlespacing{\subsection}{0em}{-.5em}{.25em}


\newcommand{\datedsection}[2]{%
  \section[\textbf{#1}]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
 
\newcommand{\name}[1]{%
  \centerline{\huge{#1}}%
}
 
\newcommand\contact[3]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
        }%
    }%
}
 
\newenvironment{c_itemize}
{ \begin{itemize}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}     }
{ \end{itemize}                  } 