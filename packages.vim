filetype off                  " required

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
Plugin 'wincent/terminus'
" Plugin 'sedm0784/vim-you-autocorrect'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'SirVer/ultisnips'
Plugin 'jlconlin/vim-snippets'
Plugin 'airblade/vim-gitgutter'
" Plugin 'vim-airline/vim-airline'

" Fugitive Related plugins
Plugin 'tpope/vim-fugitive'
" Plugin 'int3/vim-extradite'

" Language-specific plugins
Plugin 'lervag/vimtex'
Plugin 'vim-scripts/XML-Folding'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'sheerun/vim-polyglot'
" Plugin 'python-mode/python-mode'
Plugin 'fortran.vim'

" Tags
" Plugin 'majutsushi/tagbar'
" Plugin 'xolox/vim-easytags'
" Plugin 'xolox/vim-misc'

" Colorscheme plugins
Plugin 'trevordmiller/nova-vim'
Plugin 'fenetikm/falcon'
Plugin 'christophermca/meta5'
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'abra/vim-obsidian'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
 
" Games
Plugin 'vim/killersheep'
 
" Personal plugins
Plugin 'jlconlin/ENDF.vim'      " Configuration for ENDF files
Plugin 'jlconlin/cpp.vim'       " Configuration for C++ files

" All of your Plugins must be added before the following line
call vundle#end()            " required
