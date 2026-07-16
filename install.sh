#!/usr/bin/env bash

set -e

echo "🔧 Installing dotfiles..."

# Get the directory where this script lives
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Initialize submodules
echo "📦 Initializing git submodules..."
cd "$DOTFILES_DIR"
git submodule update --init --recursive

# Set up ~/.zshenv
echo " Setting up zsh environment..."

if [ -L "$HOME/.zshenv" ]; then
    echo " ~/.zshenv symlink already exists, skipping"
elif [ -e "$HOME/.zshenv" ]; then
    echo " ~/.zshenv exists. Backing up to ~/.zshenv.backup"
    mv "$HOME/.zshenv" "$HOME/.zshenv.backup"
    ln -s "$DOTFILES_DIR/zsh/.zshenv" "$HOME/.zshenv"
else
    ln -s "$DOTFILES_DIR/zsh/.zshenv" "$HOME/.zshenv"
fi

# Set up zsh symlink
echo "🔗 Setting up zsh symlink..."
if [ -L "$HOME/.zshrc" ]; then
    echo "   ~/.zshrc symlink already exists, skipping"
elif [ -f "$HOME/.zshrc" ]; then
    echo "   ⚠️  ~/.zshrc exists as a regular file. Backing up to ~/.zshrc.backup"
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
    ln -s "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
else
    ln -s "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
fi

# Install vim plugins if vim is available
if command -v vim &> /dev/null; then
    echo "📦 Installing vim plugins..."
    vim +PluginInstall +qall || true
else
    echo "   ⚠️  vim not found, skipping plugin installation"
fi

# Check tmux version and provide guidance
if command -v tmux &> /dev/null; then
    TMUX_VERSION=$(tmux -V | cut -d' ' -f2)
    echo "✓ tmux found (version $TMUX_VERSION)"
    echo "   Config will be auto-loaded from ~/.config/tmux/tmux.conf"
    if [ -f "$HOME/.tmux.conf" ] || [ -L "$HOME/.tmux.conf" ]; then
        echo "   ⚠️  ~/.tmux.conf exists. For tmux 3.1+, this is not needed."
        echo "   Consider removing it to use the ~/.config/tmux location."
    fi
else
    echo "   ⚠️  tmux not found, skipping tmux setup"
fi

echo ""
echo "✅ Dotfiles installation complete!"
echo ""
echo "Next steps:"
echo "  1. Reload your shell: source ~/.zshrc"
echo "  2. (Optional) Install tmux plugins: prefix + I (capital i) in tmux"
echo ""
