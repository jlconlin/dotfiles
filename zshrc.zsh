# .zshrc
printf "Executing ~/.zsh/zshrc.zsh\n"

export ZSHRC=$HOME/.zsh

source $ZSHRC/zsh/sourceFile.zsh

sourceFile $HOME/.zsh/ohmy.zsh

# Provide opportunity to make local changes
sourceFile $HOME/.zshrc.local


## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

# export DISPLAY=":0.0"

alias vless="vim -u ~/.vim/less.vim"
alias gvim='vim -g'
export PAGER=vless

alias ls='ls -AG'
alias ll='ls -lhG'

if [[ "$OSTYPE" == "darwin"* ]]; then
  sourceFile $ZSHRC/macos.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  sourceFile $ZSHRC/linux.zsh
fi

# Source sub files
sourceFile $ZSHRC/zsh/njoyclone.zsh
sourceFile $ZSHRC/zsh/proxy.zsh
sourceFile $ZSHRC/zsh/python.zsh
