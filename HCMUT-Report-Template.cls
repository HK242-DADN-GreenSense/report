\NeedsTeXFormat{LaTeX2e}

\usepackage{iftex}
\RequireXeTeX

\ProvidesClass{HCMUT-Report-Template}[2023/08/25-v1.0.0] % {Year}/{Month}/{Day}-v{Major}.{Minor}.{Patch}

\usepackage{xifthen}

% \newboolean{customoption}
% \setboolean{customoption}{false}
% \DeclareOption{customoption}{\setboolean{customoption}{true}}

\DeclareKeys{
    lang.store = \pdflang,
    author.store = \pdfauthor,
    subject.store = \pdfsubject,
    project.store = \pdfproject,
    passwd.store = \pdfpasswd,
    print.store = \print,
}
\SetKeys{
    lang = vi,
    author = ,
    subject = Thực tập Đồ án môn học Đa ngành,
    project = Green Sense - Nông trại thông minh,
}

\ProcessOptions
\ProcessKeyOptions

\newcommand{\duallang}[2]{\ifthenelse{\equal{\pdflang}{en}}{#1}{\ifthenelse{\equal{\pdflang}{vi}}{#2}{}}}

\LoadClass[a4paper]{article}

\usepackage{silence}
\WarningFilter{bxcalcize}{Functionality}
\WarningFilter{blindtext}{vietnamese not defined, using English instead}

\RequirePackage{settings/_init}
\RequirePackage{settings/_page}
\RequirePackage{settings/_text}
\RequirePackage{settings/_cite}
\RequirePackage{settings/_code}
\RequirePackage{settings/_math}
\RequirePackage{settings/_color}
\RequirePackage{settings/_image}
\RequirePackage{settings/_array}
\RequirePackage{settings/_final}
