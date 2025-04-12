td\ProvidesClass{SkripsiUnesa}[28/02/2025 v2.4]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a5paper,10pt,twoside,openright]{book}
\RequirePackage[hmargin={2.5cm,2cm},vmargin={2.5cm,2cm}]{geometry}
\RequirePackage{graphicx,sectsty,setspace,amssymb,amsmath,amsthm,amsfonts,pxfonts,enumitem,indentfirst,tabularx,ifthen,lscape,hyperref,array,mathtools,subcaption,multirow,natbib,tikz,actuarialsymbol,actuarialangle,listings,wrapfig,imakeidx,fancyhdr,pgfplots,setspace,longtable}
\RequirePackage[font=small,labelfont=bf]{caption}
\RequirePackage[automake,toc]{glossaries}
\RequirePackage[bahasa]{babel}
\usetikzlibrary{shapes, arrows, shapes.multipart, positioning}
\setstretch{1.15}

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
%\newcommand\@dep{Matematika}
%\DeclareRobustCommand\Departemen[1]{%
	%   \renewcommand\@dep{#1}
	%}
%\newcommand\@dept{Mathematics}
%\DeclareRobustCommand\Department[1]{%
	%   \renewcommand\@dept{#1}
	%}
\newcommand\@kps{Dr. Raden Sulaiman, M.Si.}
\DeclareRobustCommand\KPS[1]{%
	\renewcommand\@kps{#1}
}
\newcommand\@NIPkps{196712031993021001}
\DeclareRobustCommand\NIPkps[1]{%
	\renewcommand\@NIPkps{#1}
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

\newcommand\@ahli{Nama Ahli}
\DeclareRobustCommand\Ahli[1]{%
	\renewcommand\@ahli{#1}
}

\newcommand\@NIPahli{Nama Ahli}
\DeclareRobustCommand\NIPahli[1]{%
	\renewcommand\@NIPahli{#1}
}

\newcommand\@tgluji{6 Februari 2023}
\DeclareRobustCommand\TanggalUji[1]{%
	\renewcommand\@tgluji{#1}
}

% Konfigurasi halaman awal bab (nomor halaman di footer, tengah)
\fancypagestyle{chapterstyle}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt} % Hilangkan garis header
	\renewcommand{\footrulewidth}{0pt} % Hilangkan garis footer
	\fancyfoot[C]{\thepage} % Nomor halaman di tengah footer
}

% Konfigurasi halaman biasa (nomor halaman di kiri/kanan atas)
\fancypagestyle{plain}{ 
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt} % Hilangkan garis header
	\renewcommand{\footrulewidth}{0pt} % Hilangkan garis footer
	\fancyhead[LE]{\thepage} % Halaman genap (kiri atas)
	\fancyhead[RO]{\thepage} % Halaman ganjil (kanan atas)
}

% Konfigurasi halaman kosong (tidak ada nomor halaman)
\fancypagestyle{empty}{ 
	\fancyhf{} % Hapus semua header dan footer
	\renewcommand{\headrulewidth}{0pt} % Tidak ada garis header
	\renewcommand{\footrulewidth}{0pt} % Tidak ada garis footer
}

\AtBeginDocument{\pagestyle{plain}} % Terapkan style untuk halaman biasa

\newcommand\HalamanJudul{%
	\pagenumbering{gobble}
	
	\begin{center}
		\noindent
		{\Large\textbf{\MakeUppercase{\@judul}}}\\[21pt] % Ganti ex dengan pt
		
		\textit{{\large SKRIPSI}}\\[36pt] % Ganti ex dengan pt
		
		\includegraphics[height=5cm]{Gambar/logounesa}\\[36pt] % Logo disesuaikan dalam pt
		
		\vspace*{\stretch{1}}
		
		Oleh\\
		\MakeUppercase{\@nama}\\
		\textbf{NIM \@NIM}\\[45pt] % Jarak sebelum universitas
		
		\vfill % Mengisi ruang kosong agar konten selalu berada di satu halaman
		
		UNIVERSITAS NEGERI SURABAYA\\
		\makebox[\textwidth][c]{FAKULTAS~\MakeUppercase{\@fak}}\\
		%DEPARTEMEN~\MakeUppercase{\@dep}\\
		\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}\\
		\@thn
		\vspace*{\stretch{1}} % Mengisi ruang kosong setelah bagian bawah
	\end{center}
	\cleardoublepage
	\thispagestyle{empty} % Halaman kosong juga tanpa nomor
	
	\setcounter{page}{1} 
	\pagenumbering{roman}
}

% Bagian Awal (Tanpa nomor halaman pada halaman kosong)
\newcommand\Awal{%
	\frontmatter
	\pagestyle{plain} % Terapkan style halaman biasa
	\pagenumbering{roman} % Menggunakan penomoran Romawi kecil
	
	% Cek apakah halaman kosong (genap) dan jangan dicetak
	\clearpage
	\ifodd\value{page}%
	\else
	\clearpage
	\fi
}

\newcommand\SampulDalam{%
	\cleardoublepage
	\thispagestyle{chapterstyle} % Halaman ini tanpa nomor halaman
	\begin{center}
		\noindent
		{\Large\textbf{\MakeUppercase{\@judul}}}
		\vspace{\stretch{1}} % Biarkan vertikal lebih fleksibel
		
		\textit{{\large SKRIPSI}}
		
		\vspace{\stretch{1}} 
		
		Diajukan kepada Universitas Negeri Surabaya untuk Memenuhi Persyaratan Penyelesaian Program Sarjana Matematika
		
		\vspace{\stretch{1}} 
		
		Oleh\\
		\MakeUppercase{\@nama}\\
		\textbf{NIM \@NIM}
		
		\vspace{\stretch{2}} % Biarkan bagian ini terdistribusi dengan baik
		
		\textbf{\textit{UNIVERSITAS NEGERI SURABAYA}}\\
		\makebox[\textwidth][c]{FAKULTAS~\MakeUppercase{\@fak}}\\
		%DEPARTEMEN~\MakeUppercase{\@dep}\\
		\textbf{\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}}\\
		\@thn
	\end{center}
	\addcontentsline{toc}{chapter}{SAMPUL}
	\clearpage
	\ifodd\value{page} 
	\thispagestyle{empty} % Hilangkan nomor halaman
	\null
	\clearpage
	\pagenumbering{roman} % Kembalikan penomoran halaman
	\fi
}

\newcommand{\katakunci}{} % Definisi awal agar tidak undefined
\renewcommand{\katakunci}[1]{%
	\gdef\@katakunci{#1}
}

\newcommand{\keywords}{} % Definisi awal agar tidak undefined
\renewcommand{\keywords}[1]{%
	\gdef\@keywords{#1}
}

\newenvironment*{Abstrak}{%
	\chapter*{\MakeUppercase{Abstrak}} % Ubah ke huruf besar
	\addcontentsline{toc}{chapter}{ABSTRAK} % Tampilkan di daftar isi dengan huruf besar
	\thispagestyle{chapterstyle} % Halaman pertama footer tengah
	\begin{center}%
		\@nama \\
		\textbf{\MakeUppercase{\@judul}} \\ 
		Skripsi \\ 
		\@univ, Fakultas \@fak, \@thn 
	\end{center}
	\setlength{\parindent}{20pt} % Paksa indentasi pada setiap paragraf
	\noindent
}{%
	\par
	\bigskip
	\noindent\textbf{Kata kunci:}~\@katakunci % Menampilkan kata kunci di akhir abstrak
	\par
	\normalfont\normalsize
}

\newenvironment*{Abstract}{%
	\clearpage
	\pagestyle{chapterstyle} % Terapkan chapterstyle ke seluruh halaman Abstract
	\chapter*{\MakeUppercase{Abstract}} % Ubah ke huruf besar
	\addcontentsline{toc}{chapter}{ABSTRACT} % Tambahkan ke daftar isi
	\thispagestyle{chapterstyle} % Pastikan halaman ini menggunakan chapterstyle
	\begin{center}%
		\@nama \\
		\textbf{\MakeUppercase{\@juduleng}} \\ 
		Undergraduate Thesis \\ 
		\@uni, Faculty of \@fac, \@thn 
	\end{center}
	\setlength{\parindent}{20pt} % Indentasi paragraf
	\noindent
}{%
	\par
	\bigskip
	\noindent\textbf{Keywords:}~\@keywords % Menampilkan keywords di akhir abstract
	\par
	\normalfont\normalsize
	\clearpage % Pastikan halaman berikutnya tidak ikut terkena chapterstyle
	\pagestyle{plain} % Kembalikan ke format halaman biasa
}

\newcommand\SuratPernyataan{
	\chapter*{Surat Pernyataan} % Pastikan judul tetap dalam satu halaman
	\thispagestyle{plain} % Gunakan format halaman biasa
	\vspace{-10pt} % Kurangi jarak kosong setelah judul
	
	\noindent
	Saya yang bertandatangan di bawah ini:\\
	\begin{tabular}{@{}lcp{6.5cm}}
		Nama Mahasiswa & : & \@nama\\
		NIM & : &  \@NIM\\
		Program Studi & : & \@prodi\\
		Judul Penelitian & : & \@judul
	\end{tabular}\\[5pt]
	\noindent
	menyatakan dengan sesungguhnya bahwa:
	\begin{daftar}[leftmargin=0.5cm]
		\setlength{\itemsep}{2pt} % Kurangi jarak antar poin
		\item Produk dari penelitian/skripsi yang telah saya kembangkan adalah benar merupakan hasil karya saya bersama pembimbing dan belum diajukan hak cipta/paten oleh saya pribadi atau orang lain ke instansi/lembaga manapun.
		\item Menyerahkan sepenuhnya produk penelitian saya ke Program Studi~\@prodi~sebagai produk milik program studi.
		\item Tidak menuntut/meminta ganti rugi dalam bentuk apapun atau segala sesuatu yang dilakukan oleh Program Studi~\@prodi~terhadap produk penelitian/skripsi saya ini.
		\item Apabila ternyata dikemudian hari produk penelitian/skripsi ini merupakan hasil plagiat atau penjiplakan terhadap karya orang lain, maka saya bersedia menerima sanksi berdasarkan aturan yang berlaku di Negara Kesatuan Republik Indonesia.
	\end{daftar}
	
	\vspace{5pt} % Beri sedikit jarak antara isi dan tanda tangan
	Demikianlah surat pernyataan ini saya buat dengan sesungguhnya, untuk dapat dipergunakan sebagaimana mestinya.\\[2ex]
	
	\begin{center}
		\begin{tabular}{p{5cm}l}
			& Surabaya, \@tglsidang\\
			& Yang membuat pernyataan,\\[2ex]
			& \textbf{\@nama}\\
			& NIM. \@NIM
		\end{tabular}
	\end{center}
	\addcontentsline{toc}{chapter}{SURAT PERNYATAAN KEORISINILAN SKRIPSI}
	
	\vfill % Paksa agar konten hanya dalam satu halaman
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
	\clearpage
	\chapter*{Halaman Persetujuan Tugas Akhir}%
	\vspace{-50pt} % Mengurangi jarak bawaan setelah \chapter*
	\noindent
	\begin{center}
		{\large \textbf{BENTUK: SKRIPSI}}
	\end{center}
	\vspace{10pt}
		% Informasi mahasiswa
		\noindent
		\begin{tabular}{@{}lcp{6.5cm}}
			Nama Mahasiswa & : & \@nama\\
			NIM & : &  \@NIM\\
			Judul Penelitian & : & \@judul
		\end{tabular}
		
		\vspace{10pt}
		
		\noindent
		ini telah disetujui dan dinyatakan memenuhi syarat untuk diajukan dalam ujian skripsi.
		
		\vspace{\stretch{2}}
		
		\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}{%
			% Jika hanya ada satu pembimbing
			\noindent
			Surabaya, \@tglsetuju\\
			Pembimbing,\\[35pt]
			
			\noindent
			\@pbbsatu\\
			NIP~\@NIPpbbsatu\\
		}{%
			% Jika ada dua pembimbing (format dua kolom sejajar)
			\noindent
			\begin{tabularx}{\textwidth}{X X}
				\noindent Surabaya, \@tglsetuju & \\ 
				Pembimbing I, & Pembimbing II, \\[35pt]
				\@pbbsatu & \@pbbdua \\ 
				NIP \@NIPpbbsatu & NIP \@NIPpbbdua
			\end{tabularx}
		}
		\addcontentsline{toc}{chapter}{HALAMAN PERSETUJUAN}
	}
	
\newcommand\HalamanPengesahan{
	\clearpage
	\chapter*{Halaman Pengesahan Tugas Akhir}%
	\vspace{-50pt} % Mengurangi jarak bawaan setelah \chapter*
	\noindent
	\begin{center}
		{\large \textbf{BENTUK: SKRIPSI}}
	\end{center}
	
	\vspace{5pt}
	
	% Informasi mahasiswa
	\noindent
	\begin{tabular}{@{}lcp{6.5cm}}
		Nama Mahasiswa & : & \@nama\\
		NIM & : &  \@NIM\\
		Judul Penelitian & : & \@judul
	\end{tabular}
	
	\vspace{10pt}
	
	\noindent
	ini telah dipertahankan dihadapan dewan penguji tanggal \@tglsidang
	
	\vspace{5pt}
	
	\noindent
	\begin{tabular}{p{5cm}p{1.5cm}p{2cm}}    
		\multirow{2}{*}{Dewan Penguji,} & \multicolumn{1}{c}{Tanda} & \multicolumn{1}{c}{Tanggal Selesai}\\
		& \multicolumn{1}{c}{Tangan} & \multicolumn{1}{c}{Revisi}\\[5pt]
		\makebox[\textwidth][l]{\@pujsatu} & & \\
		NIP.~\@NIPpujsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[10pt]
		\makebox[\textwidth][l]{\@pujdua}  & & \\
		NIP.~\@NIPpujdua & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[10pt]
		\ifthenelse{\equal{\@pujtiga}{}}{}{%
			\makebox[\textwidth][l]{\@pujtiga}  & & \\
			NIP.~\@NIPpujtiga & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[10pt]
		}
		\makebox[\textwidth][l]{\@pbbsatu}  & & \\
		NIP.~\@NIPpbbsatu & \multicolumn{1}{c}{\dotfill} & \multicolumn{1}{c}{\dotfill} \\[10pt]
	\end{tabular}
	
	\vspace{\stretch{2}}
	
	\noindent
	\begin{tabular}{p{5cm}p{5cm}}
		Mengesahkan, & Mengetahui,\\
		Dekan FMIPA & Koordinator Program Studi\\
		\@univ & \@prodi\\[40pt]
		\@dekan & \@kps\\
		NIP. \@NIPdekan & NIP. \@NIPkps
	\end{tabular}
	\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}


\newcommand{\Prakata}{%-----------------
	\chapter*{Prakata}
	\addcontentsline{toc}{chapter}{PRAKATA}
	\vspace{\stretch{1}}
}
\newcommand{\DaftarIsi}{%---------------------
	\pagestyle{plain}
	\addcontentsline{toc}{chapter}{DAFTAR ISI}
	\tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
	\addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
	\listoffigures
}
\newcommand{\DaftarTabel}{%----------------------
	\addcontentsline{toc}{chapter}{DAFTAR TABEL}
	\listoftables
}
\newcommand{\DaftarSimbol}{%----------------------
	\chapter*{Daftar Simbol}
	\addcontentsline{toc}{chapter}{DAFTAR SIMBOL}
}

\newcommand\Inti{%
	\cleardoublepage
	\mainmatter
	\pagestyle{plain} % Terapkan style halaman biasa
	
	% Pastikan Bab baru selalu dimulai di halaman ganjil
	\clearpage
	\ifodd\value{page}\else
	\thispagestyle{plain} % Gunakan format halaman biasa
	\vfill
	\begin{center}
		\textit{Halaman ini sengaja dikosongkan.}
	\end{center}
	\vfill
	\clearpage
	\fi
}

\usepackage{indentfirst} % Paket untuk mengontrol indentasi paragraf pertama
\setlength{\parindent}{20pt} % Menetapkan indentasi paragraf biasa
\setlength{\parskip}{0pt} % Menghilangkan jarak antarparagraf

\setcounter{secnumdepth}{3}

\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{chapterstyle} % Menggunakan format halaman awal bab
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
	\vspace*{0.5cm}%
	{\parindent \z@ \centering\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\if@mainmatter
		\large\bfseries \MakeUppercase\@chapapp\space \thechapter
		\par
		\fi
		\fi
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 35\p@
}}
\gdef\@schapter#1{\@makeschapterhead{#1}%
	\@afterheading
}
\gdef\@makeschapterhead#1{%
	\vspace*{0.5cm}%
	{\parindent \z@ \centering
		\normalfont
		\interlinepenalty\@M
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 40\p@
}}

\renewcommand\section{\@startsection {section}{1}{0pt}%
	{-1.5ex \@plus -1ex \@minus -.2ex}%
	{0.01ex \@plus.2ex}%
	{\normalfont\normalsize\bfseries}}
	
\renewcommand\subsection{\@startsection{subsection}{2}{0pt}%
	{-12pt \@plus -6pt \@minus -3pt}%
	{6pt \@plus 3pt}%
	{\normalfont\normalsize\bfseries}}
	
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{0pt}%
	{-10pt \@plus -5pt \@minus -3pt}%
	{4pt \@plus 2pt}%
	{\normalfont\normalsize\bfseries}}
	
\renewcommand\paragraph{\@startsection{paragraph}{4}{0pt}%
	{8pt \@plus 2pt \@minus 2pt}%
	{4pt \@plus 2pt}%
	{\normalfont\normalsize\bfseries}}

\renewcommand*\thechapter{\@Roman\c@chapter}
\renewcommand*\thesection{\@Alph\c@section.}
\renewcommand*\thesubsection{\@arabic\c@subsection.}
\renewcommand*\thesubsubsection{\@alph\c@subsubsection.}

\newtheorem{theorem}{Teorema}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposisi}
\newtheorem{corollary}[theorem]{Akibat}
\newtheorem{axiom}[theorem]{Aksioma}
\newtheorem{example}[theorem]{Contoh}
\newtheorem{definition}[theorem]{Definisi}

%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}

\renewcommand*\l@chapter[2]{%
	\ifnum \c@tocdepth >\m@ne
	\addpenalty{-\@highpenalty}%
	\vskip 6pt \@plus 2pt
	\setlength\@tempdima{5pt}
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	\leavevmode
	\advance\leftskip\@tempdima
	\hskip -\leftskip
	#1\nobreak\hfil \nobreak
	\hb@xt@\@pnumwidth{\hss #2}
	\par
	\penalty\@highpenalty
	\endgroup
	\fi}

\renewcommand*\l@chapter{\@dottedtocline{0}{0pt}{39pt}} % Tambah jarak antara Bab dan judul
\renewcommand*\l@section{\@dottedtocline{1}{12pt}{26pt}} % Lebih banyak spasi untuk Section
\renewcommand*\l@subsection{\@dottedtocline{2}{24pt}{13pt}} % Subsection lebih masuk
\renewcommand*\l@subsubsection{\@dottedtocline{3}{36pt}{22pt}} % Subsubsection lebih rapi

\renewcommand*\l@figure{\@dottedtocline{1}{0pt}{60pt}} % Menyesuaikan indentasi daftar gambar
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}} % Format penomoran gambar
\renewcommand*\l@table{\@dottedtocline{1}{0pt}{60pt}} % Menyesuaikan indentasi daftar tabel

%%%%%%------------------------
\renewcommand\thetheorem
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@theorem}

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

\newcommand{\Glosarium}{%----------------------
	\cleardoublepage
	\printglossaries
}

%%%%---------------------------------
% Bagian Lampiran (Tanpa nomor halaman pada halaman kosong)
\newcommand\BukaLampiran{%
	\cleardoublepage
	\setcounter{chapter}{0}%
	\setcounter{section}{0}%
	\gdef\@chapapp{\appendixname}%
	\gdef\thechapter{\@Alph\c@chapter}%
	\addtocontents{toc}{\protect\addvspace{1ex}}%
	\addcontentsline{toc}{chapter}{LAMPIRAN}%
	\pagestyle{plain} % Terapkan plain ke seluruh halaman lampiran
	
	% Pastikan halaman kosong tidak memiliki nomor halaman
	\clearpage
	\ifodd\value{page}\else
	\thispagestyle{empty}
	\null
	\clearpage
	\fi
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

%-----------------------------------
\newcommand\biodata[1]{%-----------
	\begin{wrapfigure}{l}{3cm}
		{\includegraphics[width=3cm,height=4cm]{#1}}
	\end{wrapfigure}
}

\newlist{daftar}{enumerate}{2} % Mendukung dua level enumerate

% Level pertama sejajar dengan subbab
\setlist[daftar,1]{labelindent=0pt, leftmargin=\parindent, itemindent=0pt, listparindent=0pt, partopsep=0pt, topsep=0pt, itemsep=0pt, parsep=0pt, label=\arabic*.}

% Level kedua sejajar dengan isi daftar level pertama
\setlist[daftar,2]{labelindent=0pt, leftmargin=\parindent, itemindent=0pt, listparindent=0pt, partopsep=0pt, topsep=0pt, itemsep=0pt, parsep=0pt, label=\arabic{daftari}.\arabic*.}

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
\renewcommand\proofname{Bukti}
\renewcommand\qedsymbol{$\blacksquare$}
\addto{\captionsbahasa}{\renewcommand{\bibname}{DAFTAR PUSTAKA}}
\addto\captionsbahasa{\renewcommand{\bibname}{DAFTAR PUSTAKA}}
\addto\captionsbahasa{\renewcommand{\glossaryname}{GLOSARIUM}}
\addto\captionsbahasa{\renewcommand{\indexname}{INDEKS}}

\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\lstset{ 
	backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}; should come as last argument
	basicstyle=\footnotesize\ttfamily,        % the size of the fonts that are used for the code
	breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
	breaklines=true,                 % sets automatic line breaking
	captionpos=b,                    % sets the caption-position to bottom
	commentstyle=\color{mygreen},    % comment style
	deletekeywords={...},            % if you want to delete keywords from the given language
	escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
	extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	firstnumber=1,                % start line enumeration with line 1000
	frame=single,	                   % adds a frame around the code
	keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
	keywordstyle=\color{blue},       % keyword style
	%language=Python,                 % the language of the code
	morekeywords={*,...},            % if you want to add more keywords to the set
	numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,                   % how far the line-numbers are from the code
	numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
	rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showstringspaces=false,          % underline spaces within strings only
	showtabs=false,                  % show tabs within strings adding particular underscores
	stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
	stringstyle=\color{mymauve},     % string literal style
	tabsize=2,	                   % sets default tabsize to 2 spaces
	%title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

\newcommand\UjiAhli{
	\enlargethispage{1.5cm}
	\thispagestyle{plain}
	\noindent
	Yang bertandatangan di bawah ini:\\
	\begin{tabular}{@{}lcp{7cm}}
		Nama & : & \@ahli\\
		NIP & : & \@NIPahli\\
		Jabatan & : &  Dosen Program Studi~\@prodi\\
	\end{tabular}\\[2ex]
	menerangkan bahwa mahasiswa yang bernama:
	\begin{tabular}{@{}lcp{7cm}}
		Nama & : & \@nama\\
		NIM & : & \@NIM\\
		Program Studi & : &  \@prodi\\
	\end{tabular}\\[2ex]
	telah melakukan uji pakar instrumen penelitian yang berupa kuesioner pada tanggal~\@tgluji. Demikianlah surat keterangan ini untuk dapat dipergunakan sebagaimana mestinya.\\[5ex]
	\begin{tabular}{p{5cm}l}
		& Surabaya, \@tgluji\\
		& Dosen/pakar\\[12ex]
		& \@ahli\\
		& NIP. \@NIPahli
	\end{tabular}
}

\lefthyphenmin=5
\righthyphenmin=5
\sloppy
