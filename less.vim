set nocompatible

source  ~/.vim/packages.vim
filetype plugin indent on

colorscheme gruvbox
set background=light

" Status line
set laststatus=0
set cmdheight=1
set nomodifiable " Only in version 6.0
set readonly

" Turn syntax on
syntax enable

" Don't fold anything
set nofoldenable

" No menu bar and tool bar
set guioptions=aiMr

" Key bindings.
nmap b <C-B><C-G>
nmap q :q!<CR>
nmap <Up> <C-Y>
nmap <Down> <C-E>

" To type the following line, type *two* C-V's followed by two spaces. This
" is how you map the spacebar.
nmap ^V <C-F><C-G>
