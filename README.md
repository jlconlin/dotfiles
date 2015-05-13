# ViMConfig
My personal ViM Configuration files

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
Doing this will make ViM see these configuration files and you will be happy.