# .zshrc
printf "Executing ~/.zsh/zshrc.zsh\n"

export ZSHRC=$HOME/.zsh

source $ZSHRC/zsh/sourceFile.zsh

sourceFile $HOME/.zshrc.local

## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

# export DISPLAY=":0.0"

alias vless="vim -u ~/.vim/less.vim"
# export PAGER=vless

alias ls='ls -AG'
alias ll='ls -lhG'

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $ZSHRC/macos.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source $ZSHRC/linux.zsh
fi
