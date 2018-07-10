# ViMConfig
My personal ViM Configuration files

## Getting the distribution
The easiestland probably only-way to get this distribution is by using `git`. Since the [Vundle](https://github.com/gmarik/Vundle.vim) is a submodule of this repository, it is recommended that you clone recursively

	git clone --recursive https://github.com/jlconlin/ViMConfig.git ~/.vim


## Configure the configuration
Included with these configuration files are

 - `vimrc`
 - `gvimrc`

## Plugins
Plugins are managed by [Vundle](https://github.com/VundleVim/Vundle.vim). If you cloned recursively then this should be available automatically.

### Installing Plugins
Once the repository has been cloned and configured the plugins can be installed simply by executing:

```vim
vim +PluginInstall +qall
```
as described by the installation procedures for Vundle.

### Building Plugins
There are some plugins that need to be built after they are installed. Here are the instructions for building each of them. **Note:** These instructions are for the Mac as that is the machine I use. These instructions may work for other platforms.

## ViM Plugins used in this distribution

 - [vim-latex](https://github.com/vim-latex/vim-latex) Working with LaTeX files.

 - [Align](https://github.com/JLimperg/Align) Align statements based on regular expression syntax matching
 - [VisIncr](https://github.com/vim-scripts/VisIncr) Facilitates the increasing/decreasing of columnar information.
 - [XML-Folding](https://github.com/vim-scripts/XML-Folding) Folding for XML.
 - [SuperTab](https://github.com/ervandew/supertab.git) Allows you to use `<Tab>` for autocompletion.
 - [Tagbar](http://github.com/majutsushi/tagbar) Provides an easy way to browse the tags for the current file.
 - [vim-easytags](https://github.com/xolox/vim-easytags) Automatic tag generation and syntax highlighting.
 - [vim-misc](https://github.com/xolox/vim-misc) Miscellaneous auto-load scripts.
 - [vim-json](https://github.com/elzr/vim-json) Better syntax highlighting and folding for JSON files.
 - [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) Provides integration between ViM and tmux. 
 - [lervag/vimtex](https://github.com/lervag/vimtex) An alternative LaTeX plugin.
 - [jeetsukumaran/vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator) Listing and selecting Vim buffers.
 - [vim-markdown](https://github.com/plasticboy/vim-markdown) Syntax highlighting and folding for Markdown files.
 - [tpope/vim-commentary](https://github.com/tpope/vim-commentary) commentary.vim: comment stuff out
 - [Konfekt/FastFold](https://github.com/Konfekt/FastFold) Speed up Vim by updating folds only when called-for.
 - [wincent/command-t](https://github.com/wincent/command-t) Fast file navigation

## My personal plugins
 - [ENDF.vim](https://github.com/jlconlin/ENDF.vim) Syntax highlighting/folding for ENDF files.
 - [cpp.vim](https://github.com/jlconlin/cpp.vim) Personal C++ configuration

## Colorscheme plugins
 - [trevordmiller/nova-vim](https://github.com/trevordmiller/nova-vim) Nova colorscheme plugin for vim
 - ['fenetikm/falcon'](https://github.com/fenetikm/falcon) Falcon colorscheme for Vim and various terminals
 - [meta5](https://github.com/christophermca/meta5) Dark colorscheme.
 - [vim-monokai](https://github.com/sickill/vim-monokai) Monokai colorscheme
 - [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) a colorscheme that looks nice.
