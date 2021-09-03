# Configuration specific to MacOS

# printf "Executing $ZSHRC/macos.zsh\n"
export ZSHRC_MACOS=$ZSHRC/macos

ulimit -n 2048
#
# Settings for vim and MacVim
export VIM_APP_DIR=/Applications
export PATH=$VIM_APP_DIR/MacVim.app/Contents/MacOS:$PATH
export EDITOR="$VIM_APP_DIR/MacVim.app/Contents/MacOS/Vim"

alias vim=$EDITOR
alias gvim="vim -g"

