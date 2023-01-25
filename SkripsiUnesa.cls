\ProvidesClass{SkripsiUnesa}[25/1/2023 v1.05]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a5paper,10pt,twoside,openright]{book}
\RequirePackage[hmargin={2.3cm,2cm},vmargin={2.5cm,2cm}]{geometry}
\RequirePackage{graphicx,mathptmx,sectsty,amssymb,amsmath,amsthm,amsfonts,indentfirst,tabularx,ifthen,lscape,mathpazo,hyperref,array,breqn,mathtools,subcaption,multirow,enumerate,listings,natbib}
%\RequirePackage[bahasa]{babel}
\RequirePackage[table]{xcolor}

%
\newcommand{\@judul}{Judul Skripsi}
\DeclareRobustCommand{\Judul}[1]{%
    \renewcommand{\@judul}{#1}%
}
\newcommand{\@juduleng}{The Title}
\DeclareRobustCommand{\JudulEng}[1]{%
    \renewcommand{\@juduleng}{#1}%
}
\newcommand{\@nama}{Nama Mahasiswa}
\DeclareRobustCommand{\Nama}[1]{%
   \renewcommand{\@nama}{#1}%
}
\newcommand{\@NIM}{NIM Mahasiswa}
\DeclareRobustCommand{\NIM}[1]{%
   \renewcommand{\@NIM}{#1}
}
\newcommand\@prodi{Matematika}
\DeclareRobustCommand\ProgramStudi[1]{%
	\renewcommand\@prodi{#1}
}
\newcommand\@prodiEng{Matematika}
\DeclareRobustCommand\Programme[1]{%
	\renewcommand\@prodiEng{#1}
}
\newcommand\@dep{Matematika}
\DeclareRobustCommand\Departemen[1]{%
   \renewcommand\@dep{#1}
}
\newcommand\@dept{Mathematics}
\DeclareRobustCommand\Department[1]{%
   \renewcommand\@dept{#1}
}
\newcommand\@kadep{Dr. Raden Sulaiman, M.Si.}
\DeclareRobustCommand\Kadep[1]{%
	\renewcommand\@kadep{#1}
}
\newcommand\@NIPkadep{196712031993021001}
\DeclareRobustCommand\NIPKadep[1]{%
	\renewcommand\@NIPkadep{#1}
}
\newcommand\@dekan{Prof. Dr. Wasis, M.Si.}
\DeclareRobustCommand\Dekan[1]{%
	\renewcommand\@dekan{#1}
}
\newcommand\@NIPdekan{196712031993021001}
\DeclareRobustCommand\NIPDekan[1]{%
	\renewcommand\@NIPdekan{#1}
}
\newcommand\@univ{Unesa}
\DeclareRobustCommand\Universitas[1]{%
	\renewcommand\@univ{#1}
}

\newcommand\@uni{SUSu}
\DeclareRobustCommand\Institution[1]{%
	\renewcommand\@uni{#1}
}

\newcommand\@thn{2023}
\DeclareRobustCommand\Tahun[1]{%
   \renewcommand\@thn{#1}
}
\newcommand\@fak{Matematika dan Ilmu Pengetahuan Alam}
\newcommand\@faks{MIPA}
\DeclareRobustCommand\Fakultas[2]{%
   \renewcommand\@fak{#1}
   \renewcommand\@faks{#2}
}
\newcommand\@fac{Mathematics and Natural Sciences}
\newcommand\@facs{MNS}
\DeclareRobustCommand\Faculty[1]{%
   \renewcommand\@fac{#1}
   \renewcommand\@facs{#1}
}
\newcommand\@pbbsatu{Nama Pembimbing Pertama}
\newcommand\@pbbdua{Nama Pembimbing Kedua}
\newcommand\@pbbtiga{Nama Pembimbing Ketiga}
\DeclareRobustCommand\Pembimbing[3]{%
   \renewcommand{\@pbbsatu}{#1}%
   \renewcommand{\@pbbdua}{#2}%
   \renewcommand{\@pbbtiga}{#3}%
}
\newcommand\@NIPpbbsatu{12345678 123456 1 123}
\newcommand\@NIPpbbdua{12345678 123456 1 123}
\newcommand\@NIPpbbtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPembimbing[3]{%
   \renewcommand{\@NIPpbbsatu}{#1}%
   \renewcommand{\@NIPpbbdua}{#2}%
   \renewcommand{\@NIPpbbtiga}{#3}%
}
\newcommand\@pujsatu{Nama Penguji Pertama}
\newcommand\@pujdua{Nama Penguji Kedua}
\newcommand\@pujtiga{Nama Penguji Ketiga}
\DeclareRobustCommand\Penguji[3]{%
   \renewcommand{\@pujsatu}{#1}%
   \renewcommand{\@pujdua}{#2}%
   \renewcommand{\@pujtiga}{#3}%
}
\newcommand\@NIPpujsatu{12345678 123456 1 123}
\newcommand\@NIPpujdua{12345678 123456 1 123}
\newcommand\@NIPpujtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPenguji[3]{%
   \renewcommand{\@NIPpujsatu}{#1}%
   \renewcommand{\@NIPpujdua}{#2}%
   \renewcommand{\@NIPpujtiga}{#3}%
}
\newcommand\Awal{%
    \frontmatter
    \pagestyle{plain}
}
\newcommand\HalamanJudul{%
    \cleardoublepage
    \thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{center}
    \noindent
    {\Large\textbf{\MakeUppercase{\@judul}}}\\[5ex]
    
    \textit{{\large SKRIPSI}}\\[12ex]
    
    \includegraphics[height=5cm]{Gambar/logounesa}\\[12ex]
    
    Oleh\\
    \MakeUppercase{\@nama}\\
    \textbf{NIM \@NIM}\\[13ex]
    
    \textbf{\textit{UNIVERSITAS NEGERI SURABAYA}}\\
    FAKULTAS~\MakeUppercase{\@fak}\\
    DEPARTEMEN~\MakeUppercase{\@dep}\\
    \textbf{\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}}\\
    \@thn
    \end{center}
    \addcontentsline{toc}{chapter}{HALAMAN SAMPUL}
}

\newcommand\SampulDalam{%
	\cleardoublepage
	\thispagestyle{empty}
	\enlargethispage{1cm}
	\begin{center}
		\noindent
		{\Large\textbf{\MakeUppercase{\@judul}}}\\[10ex]
		
		\textit{{\large SKRIPSI}}\\[12ex]
		
		Diajukan kepada Universitas Negeri Surabaya untuk Memenuhi Persyaratan Penyelesaian Program Sarjana Matematika\\[17ex]
		
		Oleh\\
		\MakeUppercase{\@nama}\\
		\textbf{NIM \@NIM}\\[17ex]
		
		\textbf{\textit{UNIVERSITAS NEGERI SURABAYA}}\\
		FAKULTAS~\MakeUppercase{\@fak}\\
		DEPARTEMEN~\MakeUppercase{\@dep}\\
		\textbf{\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}}\\
		\@thn
	\end{center}
	%\addcontentsline{toc}{chapter}{HALAMAN JUDUL}
}

\newcommand\@tglsetuju{6 Februari 2023}
\DeclareRobustCommand\TanggalDisetujui[1]{%
   \renewcommand\@tglsetuju{#1}
}

\newcommand\@tglsidang{6 Februari 2023}
\DeclareRobustCommand\TanggalSidang[1]{%
	\renewcommand\@tglsidang{#1}
}

\newcommand\HalamanPersetujuan{
	\cleardoublepage
	\enlargethispage{1.5cm}
	\thispagestyle{empty}
	\noindent
	\centerline{\large\bfseries{\MakeUppercase{Halaman Persetujuan}}}\\[7ex]
	\noindent
	\begin{tabular}{@{}lcp{8cm}}
		Skripsi oleh & : & \@nama\\
		NIM & : &  \@NIM\\
		Judul & : & \@judul
	\end{tabular}
	
	\noindent
	 ini telah disetujui dan dinyatakan memenuhi syarat untuk diajukan dalam ujian skripsi.\\[18ex]
	
	\noindent
	Surabaya, \@tglsetuju\\
	Pembimbing,\\[10ex]
	
	\noindent
	\@pbbsatu\\
	NIP.~\@NIPpbbsatu\\
	\addcontentsline{toc}{chapter}{HALAMAN PERSETUJUAN}
}

\newcommand\HalamanPengesahan{
  \cleardoublepage
  \enlargethispage{1.5cm}
  \thispagestyle{empty}
  \noindent
  \centerline{\large\bfseries{\MakeUppercase{Halaman Pengesahan}}}\\[7ex]
  \noindent
  \begin{tabular}{@{}lcp{8cm}}
  	Skripsi oleh & : & \@nama\\
  	NIM & : &  \@NIM\\
  	Judul & : & \@judul
  \end{tabular}
	
	\noindent
	ini telah dipertahankan dihadapan dewan penguji tanggal \@tglsidang\\[5ex]
	\noindent
	\begin{tabular}{cp{5cm}p{1.5cm}p{2cm}}    
		& \multicolumn{1}{c}{Dewan Penguji} & \multicolumn{1}{c}{Tanda} & \multicolumn{1}{c}{Tanggal Selesai}\\
		& & \multicolumn{1}{c}{Tangan} & \multicolumn{1}{c}{Revisi}\\[2ex]
		1 & \@pbbsatu & & \\
		& NIP.~\@NIPpbbsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
		2 & \@pujsatu & & \\
		& NIP.~\@NIPpujsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
		3 & \@pujdua & & \\
		& NIP.~\@NIPpujdua & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[5ex]
	\end{tabular}

	\noindent
	\begin{tabular}{p{5cm}p{5cm}}
		Mengesahkan, & Mengetahui,\\
		Dekan Fakultas \@fak~\@univ & Ketua Departemen \@dep~\@univ\\[15ex]
		\@dekan & \@kadep\\
		NIP. \@NIPdekan & NIP. \@NIPkadep
	\end{tabular}
    \addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}

\newcommand\Orisinalitas{
	\cleardoublepage
	\enlargethispage{1.5cm}
	\thispagestyle{empty}
	\noindent
	\centerline{\large\bfseries{\MakeUppercase{Surat Pernyataan Keorisinilan Skripsi}}}\\[7ex]
	\noindent
	Saya yang bertandatangan di bawah ini:\\
	\begin{tabular}{@{}lcp{5.2cm}}
		Skripsi oleh & : & \@nama\\
		NIM & : &  \@NIM\\
		Program Studi/Departemen & : & \@prodi/\@dep\\
		Judul Skripsi & : & \@judul
	\end{tabular}\\[2ex]
	menyatakan dengan sesungguhnya bahwa:
	\begin{tenumerate}
		\item produk dari penelitian/skripsi yang telah saya kembangkan adalah benar merupakan hasil karya saya bersama pembimbing dan belum diajukan hak cipta/paten oleh saya pribadi atau orang lain ke instansi/lembaga manapun;
		\item menyerahkan sepenuhnya produk penelitian saya ke Program Studi~\@prodi~sebagai produk milik program Studi;
		\item tidak menuntut/meminta ganti rugi dalam bentuk apapun atau segala sesuatu yang dilakukan oleh Program Studi~\@prodi~terhadap produk penelitian/skripsi saya ini;
		\item apabila ternyata dikemudian hari produk penelitian/skripsi ini merupakan hasil plagiat atau penjiplakan terhadap karya orang lain, maka saya bersedia menerima sanksi berdasarkan aturan yang berlaku di Negera Kesatuan Republik Indonesia.
	\end{tenumerate}
	Demikianlah surat pernyataan ini saya buat dengan sesungguhnya, untuk dapat dipergunakan sebagaimana mestinya.\\[3ex]
	\begin{tabular}{p{5cm}l}
		& Surabaya, \@tglsidang\\
		& Yang membuat pernyataan,\\[3ex]
		& Meterai\\
		& (Rp. 10.000)\\[4ex]
		& \@nama\\
		& NIM. \@NIM
	\end{tabular}
	\addcontentsline{toc}{chapter}{SURAT PERNYATAAN KEORISINIAL SKRIPSI}
}

\newcommand{\katakunci}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textbf{Kata kunci:} & #1
    \end{tabularx}
}
\newcommand{\keywords}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textbf{Keywords:} & #1
    \end{tabularx}
}
\newenvironment*{Abstrak}{%-------------------------------
  \cleardoublepage
  \begin{center}%
  	{\large\bfseries{\MakeUppercase{ABSTRAK}}}\\[3ex]
    {\large\bfseries{\MakeUppercase{\@judul}}}
    \par \vskip 3ex%
    \par%
    \begin{tabular}{lcl}
        Nama &:& \@nama\\
        NIM &:& \@NIM\\
        Program Studi &:& \@prodi\\
        Departemen &:& \@dep\\
        Fakultas &:& \@fak\\
        Nama Lembaga &:& \@univ\\
        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {Pembimbing &:& \@pbbsatu\\}
              {Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
          }
          {Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
    \end{tabular}
  \end{center}%
  \addcontentsline{toc}{chapter}{ABSTRAK}
  \par \vskip 2ex%
  \par}{\normalfont\normalsize
}
\newenvironment*{Abstract}{%-------------------------------
  \cleardoublepage
  \begin{center}%
  	{\large\bfseries{\MakeUppercase{ABSTRACT}}}\\[3ex]
    {\large\bfseries{\MakeUppercase{\@juduleng}}}
    \par \vskip 3ex%
    \par%
    \begin{tabular}{lcl}
        Name &:& \@nama\\
        Student ID &:& \@NIM\\
        Programme &:& \@prodiEng\\
        Departement &:& \@dept\\
        Faculty &:& \@fac\\
        Insititution &:& \@uni\\
        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {Supervisor &:& \@pbbsatu\\}
              {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
          }
          {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
    \end{tabular}
  \end{center}%
  \addcontentsline{toc}{chapter}{ABSTRACT}
    \par \vskip 2ex%
  \par}{\normalfont\normalsize
}
\newcommand{\KataPengantar}{%-----------------
    \cleardoublepage
    \centerline{\large\bfseries KATA PENGANTAR}
    \addcontentsline{toc}{chapter}{KATA PENGANTAR}
    \vspace*{40pt}
}
\newcommand{\DaftarIsi}{%---------------------
    \cleardoublepage
    \pagestyle{plain}
    \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \listoffigures
}
\newcommand{\DaftarTabel}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \listoftables
}
\newcommand{\DaftarSimbol}{%----------------------
	\cleardoublepage
	\centerline{\large\bfseries{\MakeUppercase{Daftar Simbol}}}
	\addcontentsline{toc}{chapter}{DAFTAR SIMBOL}
}
\newcommand\Inti{%--------------------
    \cleardoublepage
    \mainmatter
   %\pagestyle{myheadings}
    \pagestyle{plain}
}
\setlength{\parindent}{.7cm}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\gdef\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\@chapapp\space\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{\@chapapp\space#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\gdef\@makechapterhead#1{%
  \vspace*{5\p@}%
  {\parindent \z@ \centering\normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \large\bfseries \MakeUppercase\@chapapp\space \thechapter
        \par
      \fi
    \fi
    \large\bfseries\MakeUppercase{#1}\par\nobreak
    \vskip 40\p@
  }}
\gdef\@schapter#1{\@makeschapterhead{#1}%
                 \@afterheading
                 }
\gdef\@makeschapterhead#1{%
  \vspace*{5\p@}%
  {\parindent \z@ \centering
    \normalfont
    \interlinepenalty\@M
    \large\bfseries\MakeUppercase{#1}\par\nobreak
    \vskip 40\p@
}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1.5ex \@plus -1ex \@minus -.2ex}%
                                   {.01ex \@plus.2ex}%
                                   {\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1.5ex\@plus -1ex \@minus -.2ex}%
                                     {.01ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-.25ex\@plus -1ex \@minus -.2ex}%
                                     {.01ex \@plus.2ex}%
                                     {\normalfont\normalsize}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {.25ex \@plus1ex \@minus.2ex}%
                                    {-1.5em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@Roman\c@chapter}
\renewcommand*\thesection{\@Alph\c@section.}
%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.5em \@plus\p@
    \setlength\@tempdima{5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak
      \hb@xt@\@pnumwidth{\hss #2}
      \par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{2.8em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{2.75em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}
%%%%%%------------------------
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \figurename\space \@arabic\c@chapter.\fi \@arabic\c@figure}
\def\fnum@figure{\nobreakspace\thefigure}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \tablename\space  \@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thetable}
%%%%---------------------------------
\newcommand\DaftarPustaka[1]{%
	\cleardoublepage
	\addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
	\bibliographystyle{unesa}
	\bibliography{#1}
}

%%%%---------------------------------
\newcommand\BukaLampiran{%
    \cleardoublepage
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \addtocontents{toc}{\protect\addvspace{1ex}}%
  \addcontentsline{toc}{chapter}{LAMPIRAN}
  \thispagestyle{empty}
}
%-----------------------------------
\newcommand\lampiran[1]{%
    \refstepcounter{chapter}
    \cleardoublepage
    \thispagestyle{plain}
    \addcontentsline{toc}{chapter}{\thechapter~~ #1}
    \null
    \begin{center}
    \large\bfseries
    \MakeUppercase\appendixname\space\thechapter
    \par#1
    \end{center}
    \vskip 20\p@\par
}

\newenvironment{tenumerate}{
	\begin{enumerate}
		\setlength{\partopsep}{0pt}
		\setlength{\topsep}{0pt}
		\setlength{\itemsep}{1pt}
		\setlength{\parskip}{0pt}
	}{\end{enumerate}}

%-----------------------------------
%\RequirePackage{picins}
%\newcommand\biodata[1]{%-----------
  %\newsavebox{\foto}
  %\savebox{\foto}[3cm][b]{\includegraphics[width=3.5cm,height=5cm]{#1}}
  %\parpic(3.5cm,5.5cm){\usebox\foto}
%}
%%%------------- PENYESUAIAN ISTILAH ---------------------------
\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
\renewcommand\bibname{DAFTAR PUSTAKA}
\renewcommand\indexname{INDEKS}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
\renewcommand\appendixname{Lampiran}

\lefthyphenmin=5
\righthyphenmin=5
\sloppy
\pagestyle{myheadings}