# Python environment management via uv

if command -v uv >/dev/null; then
  # uv is installed - Python versions are managed by uv
  # Use: uv python install 3.12  (to install a Python version)
  # Use: uv python list          (to see installed versions)
  # Use: uv venv                 (to create virtual environments)
  :
fi

# Optional: prevent Python from writing .pyc files
# export PYTHONDONTWRITEBYTECODE=1

# Optional: useful aliases
# alias py='python'
# alias py3='python3'
