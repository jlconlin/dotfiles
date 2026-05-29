" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'JLimperg/Align'
Plug 'vim-scripts/VisIncr'
" Plug 'ervandew/supertab.git'
Plug 'tpope/vim-commentary'
Plug 'Konfekt/FastFold'
Plug 'wincent/command-t'
Plug 'vim-voom/VOoM'
Plug 'luochen1990/rainbow'
Plug 'wincent/terminus'
" Plug 'sedm0784/vim-you-autocorrect'
Plug 'AndrewRadev/linediff.vim'
if has('python3') || has('python3_dynamic')
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
endif
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'
" Plug 'scrooloose/syntastic'
Plug 'simnalamburt/vim-mundo'
Plug 'chrisbra/unicode.vim'
Plug 'flwyd/vim-conjoin'
Plug 'andymass/vim-matchup'     " Improved matching using %
Plug 'rickhowe/spotdiff.vim'    " Visually selectable partial diffs
Plug 'dhruvasagar/vim-table-mode'
Plug 'rickhowe/spotdiff.vim'
Plug 'rickhowe/diffchar.vim'
Plug 'junegunn/vim-emoji'
Plug 'rti/vim-auto-save'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'parkr/vim-jekyll'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-speeddating'

Plug 'madox2/vim-ai'

" Fugitive Related plugins
Plug 'tpope/vim-fugitive'
" Plug 'int3/vim-extradite'

" Language-specific plugins
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'vim-scripts/XML-Folding', { 'for': 'xml' }
Plug 'elzr/vim-json', { 'for': 'json' }
let g:polyglot_disabled = ['markdown']
Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
" Plug 'aareman/vim-markdown', { 'for': 'markdown' }
Plug 'tmhedberg/simpylfold', { 'for': 'python' }
" Plug 'python-mode/python-mode'
Plug 'vim-scripts/fortran.vim', { 'for': 'fortran' }
" Plug 'Rykka/riv.vim'
" Plug 'ssh://git@xcp-stash.lanl.gov:7999/~jlconlin/mcnp.vim.git', { 'for': 'mcnp' }
Plug 'g2boojum/vim-mcnp'
Plug 'vim-scripts/clearsilver'
Plug 'rbonvall/snipmate-snippets-bib'
Plug 'gradzikb/vim-abaqus'
Plug 'ettaka/vim-apdl'
Plug 'tpope/vim-liquid'

" Tags
Plug 'majutsushi/tagbar'
Plug 'Draiken/vim-easytags'
Plug 'xolox/vim-misc'

" Plug
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'

" Colorscheme plugins
" Plug 'trevordmiller/nova-vim'
" Plug 'fenetikm/falcon'
" Plug 'christophermca/meta5'
" Plug 'sickill/vim-monokai'
" Plug 'altercation/vim-colors-solarized'
" Plug 'abra/vim-obsidian'
" Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
 
" Games
" Plug 'vim/killersheep'
 
" Personal plugins
Plug 'jlconlin/ENDF.vim'      " Configuration for ENDF files
Plug 'jlconlin/cpp.vim'       " Configuration for C++ files

" All of your Plugs must be added before the following line
call plug#end()
