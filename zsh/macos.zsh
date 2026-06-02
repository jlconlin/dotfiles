# Configuration specific to MacOS

# printf "Executing $ZDOTDIR/macos.zsh\n"
export ZDOTDIR_MACOS=$ZDOTDIR/macos

ulimit -n 2048

# Add Homebrew sbin to PATH
export PATH="/opt/homebrew/sbin:$PATH"

# Settings for vim and MacVim
export VIM_APP_DIR=~/Applications
export PATH=$VIM_APP_DIR/MacVim.app/Contents/MacOS:$PATH
export EDITOR=`which vim`

alias gvim="vim -g"

alias ls='ls -AG'
alias ll='ls -lhAG'
