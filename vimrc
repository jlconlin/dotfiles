set nocompatible              " be iMproved, required
filetype off                  " required

" Navigate vim splits like a sane person
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Commands to make moving through command line like in the terminal
:cnoremap <M-B> <s-left>
:cnoremap <M-F> <s-right>
:cnoremap <C-A> <home>
:cnoremap <C-E> <end>

let mapleader="\\"
map <C-D> <Plug>IMAP_JumpForward

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'JLimperg/Align'
Plugin 'vim-scripts/VisIncr'
Plugin 'ervandew/supertab.git'
Plugin 'tpope/vim-commentary'
Plugin 'Konfekt/FastFold'
Plugin 'wincent/command-t'
Plugin 'vim-voom/VOoM'
Plugin 'previm/previm'
Plugin 'luochen1990/rainbow'

" Language-specific plugins
Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
Plugin 'vim-scripts/XML-Folding'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'sheerun/vim-polyglot'
Plugin 'python-mode/python-mode'

" Tags
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" Colorscheme plugins
Plugin 'trevordmiller/nova-vim'
" Plugin 'fenetikm/falcon'
" Plugin 'christophermca/meta5'
" Plugin 'sickill/vim-monokai'
" Plugin 'altercation/vim-colors-solarized'
 
" Personal plugins
Plugin 'jlconlin/ENDF.vim'      " Configuration for ENDF files
Plugin 'jlconlin/cpp.vim'       " Configuration for C++ files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on               " Enable syntax highlighting
colorscheme nova

" set synmaxcol=100       " Don't syntax higlight beyond 100th column
let g:polyglot_disabled = ['latex']

set encoding=utf-8      " Set the default file encoding to UTF-8
set autoread            " Automatically read a file that has been changed
set backspace=indent,eol,start  " backspace through everything in insert mode
set nowrap              " Don't wrap lines
set foldmethod=syntax   " Fold code by define syntax
set textwidth=80        " Make vim automatically wrap at 80 characters
set ruler               " Always show status bar on bottom
set number              " Show line numbers
set clipboard=unnamed   " Enabling use of system clipboard
set hlsearch            " Highlight search results
set incsearch           " Show pattern while being typed
set ignorecase          " Searching is case insensitive
set infercase           " Smarter completions with ignorecase
set smartcase           " Case insensitive if pattern contains uppercase characters
set autoindent          " Indent as with previous line
set smartindent         " Be smart about autoindent
set expandtab           " Replace tabs with spaces
set smarttab            " Be smart about replacing tabs with spaces
set formatoptions=tcqnrl
set shiftround          " >> indents to next multiple of 'shiftwidth'
set shiftwidth=2        " Number of spaces for each step of (auto) indent
set tabstop=2           " Number of spaces that a <Tab> counts for
set linebreak           " Break long lines between words 
set mouse=a             " Enable the use of a te mouse
set showmode            " Show current mode in command-line
set showcmd             " Show already typed keys when more are expected
set matchpairs+=<:>     " Makes vim also match < > as it does other parantheses
set wildmenu            " Allow tab completion of vim options
set wildmode=full       " Complete the next full match
set vb                  " Use visual bell instead of beeping
set sbo-=ver            " Default to horizontal scrollbinding instead of vertical
set sbo+=hor

set sessionoptions=blank,curdir,folds,help,options,resize,tabpages,winsize
set printoptions=paper:letter,number:y,duplex:off,left:5pc

" Settings unique to Mac
if has("macunix")
  set macmeta             " use Mac's option key as meta
endif

" Fold based on a regular expression After searching, fold those things not
" found, by issuing the command '\z' (without quotes, of course)
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
nnoremap \Z :set foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

command Vterm :vert term

" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

" Set a better commentstring for some filetypes
autocmd FileType c,cpp,h,hpp,cs,java setlocal commentstring=//\ %s

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:tex_flavor='latex'

" Where ViM should search for ctags
if !isdirectory($HOME.'/.vim/ctags') && exists('*mkdir')
  call mkdir($HOME.'/.vim/ctags')
endif
set tags=~/.vim/ctags

" Use CTRL-\ to open a (ctag) definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Use Alt-] to open a (ctag) definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Show the tags for the current file
nmap <F8> :TagbarToggle<CR>

" Update the ctags whenever a file is saved
let g:easytags_events = ['BufWritePost']

" Update easy tags asynchronously
" This doesn't freeze the window while the tags are updated
let g:easytags_async=1

source ~/.vim/vimdirs.vim
