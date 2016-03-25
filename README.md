# ViMConfig
My personal ViM Configuration files

## Getting the distribution
The easiestland probably only-way to get this distribution is by using `git`. Since the [Vundle][1] is a submodule of this repository, it is recommended that you clone recursively

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
Plugins are managed by [Vundle][2]. If you cloned recursively then this should be available automatically.

### Installing Plugins
Once the repository has been cloned and configured the plugins can be installed simply by executing:

	vim +PluginInstall +qall
as described by the installation procedures for Vundle.

### Building Plugins
There are some (just one as of this writing) plugins that need to be built after they are installed. Here are the instructions for building each of them.
#### vimproc
	cd .vim/bundle/vimproc/
	make
## ViM Plugins used in this distribution

 - [vim-latex][3]
 - [rainbow][4]
 - [Align][5]
 - [nerdtree][6]
 - [python-mode][7]
 - [VisIncr][8]
 - [XML-Folding][9]
 - [ENDF.vim][10]
 - [cpp.vim][11]
 - [quick-scope][12]
 - [vimproc][13]
 - [vimshell][14]
 - [SuperTab][15]
 - [Tagbar][16]
 - [vim-easytags][17]
 - [vim-misc][18]

[1]:	https://github.com/gmarik/Vundle.vim
[2]:	https://github.com/gmarik/Vundle.vim
[3]:	https://github.com/neosimsim/vim-latex
[4]:	https://github.com/oblitum/rainbow
[5]:	https://github.com/JLimperg/Align
[6]:	https://github.com/scrooloose/nerdtree
[7]:	https://github.com/klen/python-mode
[8]:	https://github.com/vim-scripts/VisIncr
[9]:	https://github.com/vim-scripts/XML-Folding
[10]:	https://github.com/jlconlin/ENDF.vim
[11]:	https://github.com/jlconlin/cpp.vim
[12]:	https://github.com/unblevable/quick-scope
[13]:	https://github.com/Shougo/vimproc.vim
[14]:	https://github.com/Shougo/vimshell.vim
[15]:	https://github.com/ervandew/supertab.git
[16]:	http://github.com/majutsushi/tagbar
[17]:	https://github.com/xolox/vim-easytags
[18]:	https://github.com/xolox/vim-misc
