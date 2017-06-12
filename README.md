# ViMConfig
My personal ViM Configuration files

## Getting the distribution
The easiestland probably only-way to get this distribution is by using `git`. Since the [Vundle](https://github.com/gmarik/Vundle.vim) is a submodule of this repository, it is recommended that you clone recursively

	git clone --recursive https://github.com/jlconlin/ViMConfig.git ~/.vim


## Configure the configuration
Included with these configuration files are

 - `vimrc`
 - `gvimrc`

To use these files—without copying them—create a file `~/.vimrc` with this as the contents

```vim
if filereadable(expand("\~/.vim/vimrc"))
  source \~/.vim/vimrc
endif
"
if has("gui\_running") && filereadable(expand("\~/.vim/gvimrc"))
	source ~/.vim/gvimrc
endif

if filereadable(expand("\~/.vim/vimrc.local"))
  source \~/.vim/vimrc.local
endif
```

Then create a link from `$HOME/.vimrc` to `$HOME/.gvimrc`. Doing this will make ViM see these configuration files and you will be happy. Cloning my distribution, will not automatically get the plugins. However, the Vundle plugin can do that anyway. Simply do this:

### Directories
My configuration uses a few custom directories to store temporary and backup files.
  - `~/.vimbackup`
  - `~/.vimswap`
  - `~/.vimundo`

If these files are not present, then there will be some minor errors when opening up a file as it won't know what directory to look in for backup, swap, and undos.

## Plugins
Plugins are managed by [Vundle](https://github.com/gmarik/Vundle.vim). If you cloned recursively then this should be available automatically.

### Installing Plugins
Once the repository has been cloned and configured the plugins can be installed simply by executing:

```vim
vim +PluginInstall +qall
```
as described by the installation procedures for Vundle.

### Building Plugins
There are some plugins that need to be built after they are installed. Here are the instructions for building each of them. **Note:** These instructions are for the Mac as that is the machine I use. These instructions may work for other platforms.

#### YouCompleteMe

```vim
cd ~/.vim/bundle/YouCompleteMe
install.py --all
```

#### CoVim
CoVim requires Python 2.5+ as well as some additional packages. The instructions here use `pip` to install the packages, but I generally use [Conda](https://conda.io/docs/).
```bash
pip install twisted argparse service_identity
```
Note that `argparse` is part of the standard library for Python 3.2+ and 2.7+.


## ViM Plugins used in this distribution

 - [vim-latex](https://github.com/vim-latex/vim-latex) Working with LaTeX files.
 - [rainbow](https://github.com/luochen1990/rainbow) Rainbow highlighting of parantheses.
 - [Align](https://github.com/JLimperg/Align) Align statements based on regular expression syntax matching
 - [nerdtree](https://github.com/scrooloose/nerdtree) File browser as a tree
 - [python-mode](https://github.com/klen/python-mode) Generic Python plugin
 - [VisIncr](https://github.com/vim-scripts/VisIncr) Facilitates the increasing/decreasing of columnar information.
 - [XML-Folding](https://github.com/vim-scripts/XML-Folding) Folding for XML.
 - [ENDF.vim](https://github.com/jlconlin/ENDF.vim) Syntax highlighting/folding for ENDF files.
 - [cpp.vim](https://github.com/jlconlin/cpp.vim) Personal C++ configuration
 - [SuperTab](https://github.com/ervandew/supertab.git) Allows you to use `<Tab>` for autocompletion.
 - [Tagbar](http://github.com/majutsushi/tagbar) Provides an easy way to browse the tags for the current file.
 - [vim-easytags](https://github.com/xolox/vim-easytags) Automatic tag generation and syntax highlighting.
 - [vim-misc](https://github.com/xolox/vim-misc) Miscellaneous auto-load scripts.
 - [meta5](https://github.com/christophermca/meta5) Dark colorscheme.
 - [vim-json](https://github.com/elzr/vim-json) Better syntax highlighting and folding for JSON files.
 - [vim-monokai](https://github.com/sickill/vim-monokai) Monokai colorscheme
 - [vim-markdown](https://github.com/plasticboy/vim-markdown) Syntax highlighting and folding for Markdown files.
 - [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) NERDTree plugin to indicate git status of each file.
 - [vim-airline](https://github.com/bling/vim-airline) Status bar configuration.
 - [vim-gitgutter](https://github.com/airblade/vim-gitgutter) Provides line-by-line indicator of git status.
 - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Provides line-by-line indicator of git status.
 - [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) Provides integration between ViM and tmux. 
 - [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) a colorscheme that looks nice.
 - [lervag/vimtex](https://github.com/lervag/vimtex) An alternative LaTeX plugin.
 - [FredKSchott/CoVim](https://github.com/FredKSchott/CoVim) Collaborative editing for Vim
 - [jeetsukumaran/vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator) Listing and selecting Vim buffers.
 - [mbbill/undotree](https://github.com/mbbill/undotree) The ultimate undo history visualizer for VIM.
 - [blueyed/vim-diminactive](https://github.com/blueyed/vim-diminactive) Plugin to dim inactive Vim windows.
 - [tmux-plugins/vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events) Make terminal vim and tmux work better together.
 - [trevordmiller/nova-vim](https://github.com/trevordmiller/nova-vim) Nova colorscheme plugin for vim
