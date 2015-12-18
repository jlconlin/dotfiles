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
Cloning my distribution, will not automatically get the plugins. However, the Vundle plugin can do that anyway. Simply do this:

## Installing Plugins
Once the repository has been cloned and configured the plugins can be installed simply by executing:

	vim +PluginInstall +qall
as described by the installation procedures for Vundle.

### Building Plugins
There are some (just one as of this writing) plugins that need to be built after they are installed. Here are the instructions for building each of them.
#### vimproc
	cd .vim/bundle/vimproc/
	make
## ViM Plugins used in this distribution

 - [vim-latex][1]
 - [rainbow][2]
 - [Align][3]
 - [nerdtree][4]
 - [python-mode][5]
 - [VisIncr][6]
 - [XML-Folding][7]
 - [ENDF.vim][8]
 - [cpp.vim][9]
 - [quick-scope][10]
 - [vimproc][11]
 - [vimshell][12]

[1]:	https://github.com/neosimsim/vim-latex
[2]:	https://github.com/oblitum/rainbow
[3]:	https://github.com/JLimperg/Align
[4]:	https://github.com/scrooloose/nerdtree
[5]:	https://github.com/klen/python-mode
[6]:	https://github.com/vim-scripts/VisIncr
[7]:	https://github.com/vim-scripts/XML-Folding
[8]:	https://github.com/jlconlin/ENDF.vim
[9]:	https://github.com/jlconlin/cpp.vim
[10]:	https://github.com/unblevable/quick-scope
[11]:	https://github.com/Shougo/vimproc.vim
[12]:	https://github.com/Shougo/vimshell.vim
