# Python environment management via pyenv

if command -v pyenv >/dev/null; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi

# Optional: prevent Python from writing .pyc files
# export PYTHONDONTWRITEBYTECODE=1

# Optional: useful aliases
# alias py='python'
# alias py3='python3'
