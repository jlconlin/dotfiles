# .zshrc
# Note: XDG_CONFIG_HOME and ZDOTDIR are set in ~/.zshenv
# printf "Executing $ZDOTDIR/.zshrc\n"

export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

# Get sourceFile command
source $ZDOTDIR/zsh/sourceFile.zsh

# Provide opportunity to make local changes
sourceFile $HOME/.zshrc.local

sourceFile $ZDOTDIR/ohmy.zsh

# Load OS-specific config AFTER oh-my-zsh so our aliases override theirs
if [[ "$OSTYPE" == "darwin"* ]]; then
  sourceFile $ZDOTDIR/macos.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  sourceFile $ZDOTDIR/linux.zsh
fi

unsetopt share_history      # This overrides what is in OhMyZsh
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt inc_append_history

sourceFile $ZDOTDIR/zsh/njoyclone.zsh
sourceFile $ZDOTDIR/zsh/python.zsh
sourceFile $ZDOTDIR/zsh/proxy.zsh
sourceFile $ZDOTDIR/zsh/bindkey.zsh

