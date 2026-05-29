# Unified Configuration Repository

Consolidated vim, tmux, and zsh configurations in one portable repository.

## Structure

```
~/.config/
├── vim/          # Vim configuration
├── tmux/         # Tmux configuration
└── zsh/          # Zsh configuration with Oh-My-Zsh
```

## Installation

### Prerequisites

- Git
- Vim (or MacVim on macOS)
- Tmux 3.1+ (for automatic ~/.config/tmux support)
- Zsh

### Quick Setup

```bash
# HTTPS
git clone https://github.com/jlconlin/dotfiles.git ~/.config

# or SSH
git clone git@github.com:jlconlin/dotfiles.git ~/.config

cd ~/.config
./install.sh
```

The install script will:

- Initialize git submodules
- Create `~/.zshrc` symlink (backs up existing file if needed)
- Install vim plugins automatically
- Provide next steps for completion

After installation, reload your shell:
```bash
source ~/.zshrc
```

### GitHub Codespaces

This repository is configured for automatic setup in GitHub Codespaces. Simply name it `dotfiles` in your GitHub account, and Codespaces will automatically run `install.sh` when creating new dev environments.

## Components

### Vim

- **Location:** `~/.config/vim/`
- **Portable:** Uses `$MYVIMDIR` variable for all paths
- **Plugins:** Managed by vim-plug, installed to `~/.config/vim/plugged/`
- **Runtime files:** Backup, swap, and undo in `~/.config/vim/files/`

The vim configuration automatically sets `$MYVIMDIR` to its own directory, making it location-independent.

### Tmux

- **Location:** `~/.config/tmux/`
- **Auto-discovered:** Tmux 3.1+ automatically looks in `~/.config/tmux/tmux.conf`
- **Plugins:** Managed by TPM (Tmux Plugin Manager)

### Zsh

- **Location:** `~/.config/zsh/`
- **Framework:** Oh-My-Zsh with custom plugins
- **Platform-specific:** Separate configs for macOS (`macos.zsh`) and Linux (`linux.zsh`)
- **Load order:** Oh-My-Zsh loads first, then platform-specific configs override defaults

## Submodules

This repository uses git submodules for:

- `tmux/plugins/tpm` - Tmux Plugin Manager
- `zsh/ohmyzsh` - Oh-My-Zsh framework
- `zsh/custom/plugins/zsh-autosuggestions` - Command suggestions
- `zsh/custom/plugins/zsh-syntax-highlighting` - Syntax highlighting

Update all submodules:
```bash
git submodule update --remote --merge
```

## Platform-Specific Notes

### macOS

- Uses MacVim as the default editor
- Custom aliases in `zsh/macos.zsh`
- Color support enabled with `-G` flag for `ls`

### Linux

- Uses system vim
- Custom aliases in `zsh/linux.zsh`
- Color support with `--color=auto` flag

## Customization

### Local Overrides

Create `~/.zshrc.local` for machine-specific settings that won't be committed:

```bash
# Example: local proxy settings, API keys, etc.
export CUSTOM_VAR="value"
```

### Vim Plugins

Edit `vim/Plug.vim` to add or remove plugins, then run:
```bash
vim +PluginInstall +qall
```

### Zsh Plugins

Edit the `plugins` array in `zsh/ohmy.zsh`:
```bash
plugins=(
  gitfast
  zsh-autosuggestions
  zsh-syntax-highlighting
  # add more here
)
```

## Maintenance

### Updating

```bash
cd ~/.config
git pull
git submodule update --init --recursive
```

### Adding New Configs

To add more tool configurations to this repo:

1. Create a new directory (e.g., `git/`)
2. Add relevant `.gitignore` entries if needed
3. Update this README
4. Commit and push

## History

This repository was created by merging three separate git repositories (vim, tmux, zsh) while preserving their complete commit history. The merge was performed using `git filter-branch` with subdirectory prefixes.

## License

Personal configuration files - use at your own risk.
