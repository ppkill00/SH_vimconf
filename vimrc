" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available

set tabstop=2      "탭간격 4칸
set shiftwidth=2     ">>나 <<사용시 들여쓰기 간격
set expandtab       "tab 문자를 공백문자로 변환
set softtabstop=2    "tab 간격을 공백으로 변환하면, 삭제시 두칸단위로 삭제
set visualbell      "경고 비프음 대신 한번 번쩍이는 비쥬얼 벨로 경고 사용
set nobackup       "백업 파일을 생성하지 않습니다.
set cindent        "c언어 스타일의 들여쓰기 사용
set autoindent      "자동 적인 들여쓰기 사용
set smartindent     "좀 더 지능적인 들여쓰기 사용
set cinkeys=0{,0},:,0#,!^F
set enc=utf-8
set fencs=utf-8,euc-kr
set tenc=utf-8     "인코딩 한글로 지정. 한글 삭제시 한글 단위로 삭제(2byte)
set incsearch      "키워드를 입력할때마다 검색하는 점진검색 사용
syntax on        "파일 종류에 따라 구문 강조
set background=dark   "배경을 어두운 색으로 지정
set backspace=eol,start,indent  "줄의 끝, 시작, 들여쓰기에서 백스페이시 이전 줄과 >연결
set history=10000     "VI 편집기록 1000 개 저장
set hlsearch       "검색어 강조
set ignorecase      "검색, 편집, 치환 시에 대소문자 구분 않는다.
set showmatch       "(),{}에서 닫는 괄호를 입력할때, 일치하는 괄호 보여줌
set nu
set smarttab
set ai
set cin

hi Comment ctermfg=lightblue
filetype plugin indent on

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

