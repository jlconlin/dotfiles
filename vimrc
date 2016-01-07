set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
Plugin 'neosimsim/vim-latex'
Plugin 'oblitum/rainbow'
Plugin 'JLimperg/Align'
" Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/VisIncr'
Plugin 'vim-scripts/XML-Folding'
Plugin 'unblevable/quick-scope'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

Plugin 'jlconlin/ENDF.vim'      " Configuration for ENDF files
Plugin 'jlconlin/cpp.vim'       " Configuration for C++ files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set where to store the backup files
set backupdir-=.
set backupdir^=~/.vimbackup,~/tmp

" Set where to store the swap files
set directory=~/.vimswap,~/tmp

" Set where to store the undo files
set undodir-=.
set undodir^=~/.vimundo,~/tmp

" Commands to make moving through command line like in the terminal
:cnoremap <M-B> <s-left>
:cnoremap <M-F> <s-right>
:cnoremap <C-A> <home>
:cnoremap <C-E> <end>

set macmeta             " use Mac's option key as meta

syntax on
set shiftwidth=2        " Number of spaces for each step of (auto) indent
set tabstop=2           " Number of spaces that a <Tab> counts for
set ruler               " Always show status bar on bottom
set nu                  " Show line numbers
set printoptions=paper:letter,number:y,duplex:off,left:5pc
set encoding=utf-8		" Set the default file encoding to UTF-8
set showcmd             " display incomplate commands
set autoindent          " indent as with previous line
set smartindent         " be smart about autoindent
set expandtab           " Replace tabs with spaces
set smarttab            " be smart about replacing tabs with spaces
set backspace=indent,eol,start  " backspace through everything in insert mode
set nowrap              " don't wrap lines
set textwidth=80        " Make vim automatically wrap at 80 characters
set matchpairs+=<:>     " Makes vim also match < > as it does other parantheses
set foldmethod=syntax   " fold code by define syntax
set undofile            " Make vim do persistent undo
set cursorline          " Highlight current line
set vb                  " Use visual bell instead of beeping
"set autochdir			" automatically change window's cwd to file's dir
set formatoptions+=nrl  " Automatic formatting options
set autoread            " Automatically read a file that has been changed
set hlsearch            " Highlight search results
set incsearch           " Show pattern while being typed
set ignorecase          " Searching is case insensitive
set smartcase           " Case insensitive if pattern contains uppercase characters
set hidden              " Hide a buffer when it is abandoned
set linebreak           " Break long lines between words 

" Default to horizontal scrollbinding instead of vertical
set sbo-=ver
set sbo+=hor

" Set options when saving a session
set sessionoptions=blank,curdir,folds,help,options,resize,tabpages,winsize
set colorcolumn=81      " Highlight the 81st column

" Fold based on a regular expression
" After searching, fold those things not found, by issuing the command '\z'
" (without quotes, of course)
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
nnoremap \Z :set foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

" Create rainbows
"let g:rainbow_active = 1
