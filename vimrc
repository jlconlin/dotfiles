set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
Plugin 'vim-latex/vim-latex'
Plugin 'luochen1990/rainbow'
Plugin 'JLimperg/Align'
"Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/VisIncr'
Plugin 'vim-scripts/XML-Folding'
Plugin 'ervandew/supertab.git'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'christophermca/meta5'
Plugin 'elzr/vim-json'
Plugin 'sickill/vim-monokai'
Plugin 'plasticboy/vim-markdown'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lervag/vimtex'
" Plugin 'FredKSchott/CoVim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mbbill/undotree'
" Plugin 'blueyed/vim-diminactive'
" Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'mauromorales/vim-remark'
Plugin 'trevordmiller/nova-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-commentary'
Plugin 'bash-support.vim'

Plugin 'jlconlin/ENDF.vim'      " Configuration for ENDF files
Plugin 'jlconlin/cpp.vim'       " Configuration for C++ files
" Plugin 'jlconlin/cmake.vim'

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

set bg=dark
colorscheme nova
" colorscheme solarized
" colorscheme meta5       " Use the great colorscheme from christophermca

syntax on
set shiftwidth=2        " Number of spaces for each step of (auto) indent
set tabstop=2           " Number of spaces that a <Tab> counts for
set ruler               " Always show status bar on bottom
set number              " Show line numbers
" set relativenumber      " Show line number relative to current line
set printoptions=paper:letter,number:y,duplex:off,left:5pc
set encoding=utf-8		  " Set the default file encoding to UTF-8
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
set vb                  " Use visual bell instead of beeping
"set autochdir			" automatically change window's cwd to file's dir
set formatoptions+=nrl  " Automatic formatting options
set autoread            " Automatically read a file that has been changed
set hlsearch            " Highlight search results
set incsearch           " Show pattern while being typed
set ignorecase          " Searching is case insensitive
set infercase           " Smarter completions with ignorecase
set smartcase           " Case insensitive if pattern contains uppercase characters
set hidden              " Hide a buffer when it is abandoned
set linebreak           " Break long lines between words 
set mouse=a             " Enable the use of a te mouse
set clipboard=unnamed   " Enabling use of system clipboard
set synmaxcol=100       " Don't syntax highlight beyond 100th column
set wildmenu            " Allow tab completion of vim options
set wildmode=full

" Default to horizontal scrollbinding instead of vertical
set sbo-=ver
set sbo+=hor

" Set options when saving a session
set sessionoptions=blank,curdir,folds,help,options,resize,tabpages,winsize
set colorcolumn=81      " Highlight the 81st column

" Settings unique to Mac
if has("macunix")
  set macmeta             " use Mac's option key as meta
endif

" Fold based on a regular expression
" After searching, fold those things not found, by issuing the command '\z'
" (without quotes, of course)
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
nnoremap \Z :set foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

" Set a better commentstring for some filetypes
autocmd FileType c,cpp,h,hpp,cs,java setlocal commentstring=//\ %s

" Navigate vim splits like a sane person
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Create rainbows
let g:rainbow_active = 1

" Use local colorscheme for indent lines
let g:indentLine_setColors = 0
let g:indentLine_char = '│'

" Use CTRL-\ to open a (ctag) definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Use Alt-] to open a (ctag) definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Where ViM should search for ctags
set tags=~/.vimtags,./tags;/

" Show the tags for the current file
nmap <F8> :TagbarToggle<CR>

" Update the ctags whenever a file is saved
let g:easytags_events = ['BufWritePost']

" Update easy tags asynchronously
" This doesn't freeze the window while the tags are updated
let g:easytags_async=1

" ------------- YouCompleteMe configuration --------------
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" Don't do auto completion for these types of files
let g:ycm_filetype_blacklist = {'markdown' : 1}
let g:ycm_confirm_extra_conf = 0
" Echo the error in the status line
let g:ycm_echo_current_diagnostic = 1
" Turn off pop-up completer *and* semantic triggers
let g:ycm_auto_trigger = 0
