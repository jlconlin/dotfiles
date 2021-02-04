printf "Executing $ZSHRC/macos.zsh\n"
# Configuration specific to MacOS
export ZSHRC_MACOS=$ZSHRC/macos

ulimit -n 2048
#
# Settings for vim and MacVim
export VIM_APP_DIR=/Applications
export PATH=$VIM_APP_DIR/MacVim.app/Contents/MacOS:$PATH
export EDITOR="$VIM_APP_DIR/MacVim.app/Contents/MacOS/Vim"

alias vim=$EDITOR

