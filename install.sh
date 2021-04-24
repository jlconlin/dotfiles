#! /bin/zsh

if [[ ! -a ~/.zshrc ]]; then
cat << EOF > ~/.zshrc
if [[ -f ~/.zsh/zshrc.zsh ]]; then
  source ~/.zsh/zshrc.zsh 
else
  printf "404: ~/.zsh/zshrc.zsh not found"
fi
EOF
fi

if [[ ! -a ~/.zshrc.local ]]; then
cat << EOF > ~/.zshrc.local
printf "Executing ~/.zshrc.local\n"
EOF
fi
