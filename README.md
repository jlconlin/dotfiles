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

I use the [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) plugin which requires that some fonts get installed. The easiest way to do this on MacOS is:
```bash
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```
For other systems see [font-installation](https://github.com/ryanoasis/nerd-fonts#font-installation).

### Building Plugins
There are some plugins that need to be built after they are installed. Here are the instructions for building each of them. **Note:** These instructions are for the Mac as that is the machine I use. These instructions may work for other platforms.

## ViM Plugins used in this distribution
I use a number of different plugins. See [packages.vim](package.vim) for the different plugins that I use.

