%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------ Kurzer Unterrichtsentwurf - LaTeX-Vorlage -------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ... auf Basis der Word-Vorlage des Studienseminars (Stand: 3.2018).
%
% Erstellt von Timm Thaler
% 
% GitHub-Repository: https://github.com/TimmThaler/sts-ffm_kurzentwurf
% Lizenz: GNU General Public License v3.0
%
% Word-Vorlage sowie die Handreichung für den kurzen Unterrichtsentwurf
% sind auf der Homepage des Studienseminars zu finden:
% >> https://sts-gym-frankfurt.bildung.hessen.de/modul/index.html
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{kurzentwurf}[2020/06/13 Kurzer Unterrichtsentwurf Studienseminar fuer Gymnasien in Frankfurt]

\LoadClass[a4paper, 11pt, oneside]{article}
\RequirePackage[left=25mm, right=20mm, top=20mm, bottom=20mm, marginparwidth=25mm]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Variablen für die Tabelle der formalen Angaben ----------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\@name}{\@MissingArg{Name??}}
\newcommand{\name}[1]{%
	\renewcommand{\@name}{#1}
}
\newcommand{\@vorname}{\@MissingArg{Vorname??}}
\newcommand{\vorname}[1]{%
	\renewcommand{\@vorname}{#1}
}
\newcommand{\@schule}{\@MissingArg{Schule??}}
\newcommand{\schule}[1]{%
	\renewcommand{\@schule}{#1}
}
\newcommand{\@stunde}{\@MissingArg{Stunde??}}
\newcommand{\stunde}[1]{%
	\renewcommand{\@stunde}{#1}
}
\newcommand{\@datum}{\@MissingArg{Datum??}}
\newcommand{\datum}[1]{%
	\renewcommand{\@datum}{#1}
}
\newcommand{\@zeit}{\@MissingArg{Zeit??}}
\newcommand{\zeit}[1]{%
	\renewcommand{\@zeit}{#1}
}
\newcommand{\@raum}{\@MissingArg{Raum??}}
\newcommand{\raum}[1]{%
	\renewcommand{\@raum}{#1}
}
\newcommand{\@modul}{\@MissingArg{Modul??}}
\newcommand{\modul}[1]{%
	\renewcommand{\@modul}{#1}
}
\newcommand{\@gaeste}{\@MissingArg{Gäste??}}
\newcommand{\gaeste}[1]{%
	\renewcommand{\@gaeste}{#1}
}
\newcommand{\@lerngruppe}{\@MissingArg{Lerngruppe??}}
\newcommand{\lerngruppe}[1]{%
	\renewcommand{\@lerngruppe}{#1}
}
\newcommand{\@anzahl}{\@MissingArg{Anzahl S*??}}
\newcommand{\anzahl}[1]{%
	\renewcommand{\@anzahl}{#1}
}
\author{\@vorname\ \@name}
\date{\today}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------------------- Pakete einbinden -------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}             % Deutsches Wörterbuch.
\RequirePackage[table,xcdraw]{xcolor}       % Farben einbinden, auch um Tabellenzeilen zu färben.
\RequirePackage{csquotes}
\RequirePackage{graphicx}                   % Im Draft-Modus werden nur leere Rahmen angezeigt. Das ist NORMAL!
\RequirePackage{multicol}                   % Mehrere Spalten auf einer Seite mit \begin{multicols}{2}
\RequirePackage[hidelinks]{hyperref}        % Hyperlinks innerhalb des PDF
\RequirePackage[onehalfspacing]{setspace}   % Zeilenabstand 1,5
\RequirePackage{chngcntr}                   %
%\counterwithout{footnote}{chapter}         % Fußnoten werden fortlaufend durchnummeriert
%\RequirePackage[bottom]{footmisc}           % Fußnoten immer mit \vfill ans untere Seitenende schieben.
\interfootnotelinepenalty=10000             % Seitenumbruch in Fußzeilen verhindern
\RequirePackage{longtable}                  % Tabelle, die auch Seitenumbrüche macht
\RequirePackage{pdfpages}                   % PDF-Dokumente einbinden
%\RequirePackage[defaultlines=3,all]{nowidow}   % Keine einzelnen Worte auf neuer Seite am Ende eines Absatzes.
\RequirePackage{soul} % Text sperren mit \so{Text} (größerer Zeichenabstand)
\sodef\so{}{.14em}{.4em plus.1em minus .1em}{.4em plus.1em minus .1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------- Schriftgrößen der Überschriften anpassen -------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\fontsize{11}{15}\bfseries}{\thesection. }{0em}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------- Einstellungen für die Bibliographie ----------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[style=authoryear-ibid, bibencoding=auto, backend=biber, natbib=true]{biblatex}
\bibliography{literatur}    % Bib-Datei: literatur.bib
\ExecuteBibliographyOptions{
  bibwarn=true,
  sortcites=true,
  defernumbers=true,
  isbn=false,
  doi=false,
  backref=false,
  dashed=false,
  maxnames=3,
  block=space,
  maxcitenames=3,
  backrefstyle=three+
}
\setlength\bibitemsep{1.5\itemsep}          % Lücke zwischen den Einträgen
\DeclareFieldFormat{postnote}{#1}           % Seitenangabe "S. " in Zitation unterdrücken
\DeclareFieldFormat{multipostnote}{#1}      %       und nur die Zahl anzeigen.
\setcounter{biburllcpenalty}{100}           % URLs sofort umbrechen, wenn Textbreite überschritten.
\setcounter{biburlucpenalty}{100}           % URLs sofort umbrechen, wenn Textbreite überschritten.
\setcounter{biburlnumpenalty}{100}          % URLs sofort umbrechen, wenn Textbreite überschritten.
\DeclareCiteCommand{\citeauthorname}        % Befehl zum vollständigen Zitieren eines Autorennamens
  {\boolfalse{citetracker}%
   \boolfalse{pagetracker}%
   \DeclareNameAlias{labelname}{first-last}%
   \usebibmacro{prenote}}
  {\ifciteindex
     {\indexnames{labelname}}
     {}%
   \printnames{labelname}}
  {\multicitedelim}
  {\usebibmacro{postnote}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------- Einstellungen für Kopf- und Fußzeilen ---------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}                   % Steuerung der Kopf- und Fußzeilen
\RequirePackage{lastpage}                   % Zahl der letzten Seite zu erhalten: \pageref{LastPage}
\fancypagestyle{entwurf}{                   % Standard-Layout für Kurzentwürfe
    \fancyhf{}                              % Alle Felder leeren.
    \renewcommand{\headrulewidth}{0pt}
    \setlength{\headheight}{14pt}
    \lhead{Studienseminar für Gymnasien Frankfurt am Main}
    \rfoot{Seite \thepage\ von \pageref{LastPage}}
}%
\pagestyle{entwurf}                         % Standard-Layout auf Dokument anwenden

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------- Tabelle mit formalen Angaben erstellen --------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{%
   {
        \centering
        \begin{tabular}{|p{2.8cm}|p{4.5cm}|p{2.5cm}|p{4.9cm}|}
        \hline
        \multicolumn{4}{|l|}{\rule{0pt}{20pt}\fontsize{16pt}{0}\selectfont \textbf{Kurzentwurf zum Unterrichtsbesuch}}\\[1ex]
        \hline
        \rule{0pt}{14pt}Name, Vorname:    & \@name, \@vorname   & Modul\newline (Ausbilder*in):    & \@modul        \\
        \hline
        \rule{0pt}{14pt}Schule:           & \@schule            & Weitere\newline Personen:        & \@gaeste       \\
        \hline
        \rule{0pt}{14pt}Stunde, Zeit:     & \@datum, \@stunde. Std., \@zeit    & Lerngruppe:              & \@lerngruppe   \\
        \hline
        \rule{0pt}{14pt}Raum:             & \@raum              & Anzahl\newline Schüler*innen:    & \@anzahl       \\
        \hline
        \end{tabular}
    }
}
