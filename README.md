# ViMConfig
My personal ViM Configuration files

## Getting the distribution
The easiestland probably only-way to get this distribution is by using `git`. Since the [Vundle][https://github.com/gmarik/Vundle.vim] is a submodule of this repository, it is recommended that you clone recursively

    git clone --recursive https://github.com/jlconlin/ViMConfig.git ~/.vim

Once the distribution has been cloned, you need to build the `YouCompleteMe` plugin. On a Mac simply do:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer
For other systems, follow the instructions on the [YouCompleteMe][https://github.com/Valloric/YouCompleteMe]

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

[YouCompleteMe][https://github.com/Valloric/YouCompleteMe]
[vim-latex][https://github.com/neosimsim/vim-latex]
[rainbow][https://github.com/oblitum/rainbow]   
[Align][https://github.com/JLimperg/Align]   
[nerdtree][https://github.com/scrooloose/nerdtree]   
[YouCompleteMe][https://github.com/Valloric/YouCompleteMe]   
[python-mode][https://github.com/klen/python-mode]   
[VisIncr][https://github.com/vim-scripts/VisIncr]   
[XML-Folding][https://github.com/vim-scripts/XML-Folding]   
