# .zshrc
printf "Executing ~/.zsh/zshrc.zsh\n"

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
# sourceFile $ZSHRC/antigen.zsh

sourceFile $ZSHRC/zsh/njoyclone.zsh
sourceFile $ZSHRC/zsh/python.zsh

alias ls='ls -AG'
alias ll='ls -lhG'
