\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cours}[03/06/2017 - Lesson writing class]

%% Article options
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

%% Fallback
\DeclareOption*{
  \ClassWarning{cours}{Unknown option '\CurrentOption'}
}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[a4paper]{report}

%====================== PACKAGES ======================
\usepackage[french]{babel}
\usepackage[utf8x]{inputenc}
%pour gérer les positionnement d'images
\usepackage{float}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage[colorinlistoftodos]{todonotes}
\usepackage{url}
%pour les informations sur un document compilé en PDF et les liens externes / internes
\usepackage{hyperref}
%pour la mise en page des tableaux
\usepackage{array}
\usepackage{tabularx}
%pour utiliser \floatbarrier
%\usepackage{placeins}
%\usepackage{floatrow}
%espacement entre les lignes
\usepackage{setspace}
%modifier la mise en page de l'abstract
\usepackage{abstract}
%police et mise en page (marges) du document
\usepackage[T1]{fontenc}
\usepackage[top=2cm, bottom=2cm, left=2cm, right=2cm]{geometry}
%Pour les galerie d'images
\usepackage{subfig}
\usepackage{minted}
\usepackage{color}
\usepackage{subfig}
\usepackage{fourier}
\usepackage{algorithm2e} %for psuedo code
%Pour lister les rôles
\usepackage{enumitem}

\usepackage{titlepage}

\newminted{matlab}{
    breaklines = true,
    breakanywhere = true,
    frame=lines,
    framesep=2mm,
    baselinestretch=1.2,
    fontsize=\footnotesize,
    linenos=true,
}

%====================== INFORMATION ET REGLES ======================

%rajouter les numérotation pour les \paragraphe et \subparagraphe
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\endinput