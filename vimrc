set nocompatible              " be iMproved, required

" set synmaxcol=100       " Don't syntax higlight beyond 100th column
let g:polyglot_disabled = ['latex']

source ~/.vim/python3.vim
source ~/.vim/packages.vim

filetype plugin indent on

syntax on               " Enable syntax highlighting

let g:gruvbox_contrast_light="hard"
colorscheme gruvbox
set background=dark
let g:gruvbox_italicize_comments=1

if has('termguicolors')
  set termguicolors
endif

set encoding=UTF-8      " Set the default file encoding to UTF-8
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
set cursorline          " Highlight current line
set splitright          " New split window will be on right of current window

set sessionoptions=blank,curdir,folds,help,options,resize,tabpages,winsize
set printoptions=paper:letter,number:y,duplex:off,left:5pc

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

:cabbrev Help vert h

" Toggle undo graph
nnoremap <F5> :MundoToggle<CR>

" Fold based on a regular expression After searching, fold those things not
" found, by issuing the command '\z' (without quotes, of course)
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
nnoremap \Z :set foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

" If doing a diff. Upon writing changes to file, automatically update the
" differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

" Set a better commentstring for some filetypes
autocmd FileType c,cpp,h,hpp,cs,java setlocal commentstring=//\ %s

autocmd Filetype ENDF setlocal nofoldenable

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide='.*\.aux,.*\.bbl,.*\.bcf,.*\.blg,.*\.fls,.*\.idx,.*\.ilg,.*\.ind,.*\.fdb_latexmk,.*\.run\.xml,_minted-.*\/'

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:vimtex_fold_enabled = 1
let g:tex_flavor='latex'

source ~/.vim/vimdirs.vim
source ~/.vim/snippets.vim
source ~/.vim/tags.vim
source ~/.vim/mac.vim         " Settings unique to Mac
source ~/.vim/powerline.vim
