# .zshrc
printf "Executing ~/.zsh/zshrc.zsh\n"

export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"


export ZSHRC=$HOME/.zsh

# Get sourceFile command
source $ZSHRC/zsh/sourceFile.zsh

# Provide opportunity to make local changes
sourceFile $HOME/.zshrc.local

if [[ "$OSTYPE" == "darwin"* ]]; then
  sourceFile $ZSHRC/macos.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  sourceFile $ZSHRC/linux.zsh
fi

sourceFile $ZSHRC/ohmy.zsh

unsetopt share_history      # This overrides what is in OhMyZsh
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt inc_append_history

sourceFile $ZSHRC/zsh/njoyclone.zsh
sourceFile $ZSHRC/zsh/python.zsh
sourceFile $ZSHRC/zsh/proxy.zsh
sourceFile $ZSHRC/zsh/bindkey.zsh

alias ls='ls -AG'
alias ll='ls -lhG'

