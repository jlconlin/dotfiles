# ViMConfig
My personal ViM Configuration files

## Getting the distribution
The easiestland probably only-way to get this distribution is by using `git`. Since the [Vundle](https://github.com/gmarik/Vundle.vim) is a submodule of this repository, it is recommended that you clone recursively

    git clone --recursive https://github.com/jlconlin/ViMConfig.git ~/.vim

Cloning my distribution, will not automatically get the plugins. However, the Vundle plugin can do that anyway. Simply do this:

    vim +PluginInstall +qall
as described by the installation procedures for Vundle.

## Configure the configuration
Included with these configuration files are

 - `vimrc`
 - `gvimrc`

To use these files—without copying them—create a file `~/.vimrc` with this as the contents

    if filereadable(expand("~/.vim/vimrc"))
      source ~/.vim/vimrc
    endif
    "
    if has("gui_running") && filereadable(expand("~/.vim/gvimrc"))
        source ~/.vim/gvimrc
    endif

    if filereadable(expand("~/.vim/vimrc.local"))
      source ~/.vim/vimrc.local
    endif
Then create a link from `$HOME/.vimrc` to `$HOME/.gvimrc`. Doing this will make ViM see these configuration files and you will be happy.

## ViM Plugins used in this distribution

 - [vim-latex](https://github.com/neosimsim/vim-latex)
 - [rainbow](https://github.com/oblitum/rainbow)
 - [Align](https://github.com/JLimperg/Align)
 - [nerdtree](https://github.com/scrooloose/nerdtree)
 - [python-mode](https://github.com/klen/python-mode)
 - [VisIncr](https://github.com/vim-scripts/VisIncr)
 - [XML-Folding](https://github.com/vim-scripts/XML-Folding)
 - [ENDF.vim](https://github.com/jlconlin/ENDF.vim)
 - [cpp.vim](https://github.com/jlconlin/cpp.vim)
 - [quick-scope](https://github.com/unblevable/quick-scope)
