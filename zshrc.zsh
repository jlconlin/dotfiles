# .zshrc
printf "Executing ~/.zsh/zshrc.zsh\n"

export ZSHRC=$HOME/.zsh

source $ZSHRC/zsh/sourceFile.zsh

sourceFile $ZSHRC/antigen/antigen.zsh
antigen init $ZSHRC/.antigenrc
sourceFile $ZSHRC/ohmy.zsh
sourceFile $ZSHRC/.bash/bashrc.bash

# Provide opportunity to make local changes
sourceFile $HOME/.zshrc.local

if [[ "$OSTYPE" == "darwin"* ]]; then
  sourceFile $ZSHRC/macos.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  sourceFile $ZSHRC/linux.zsh
fi

