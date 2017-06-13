# tmux Configuration
This repository contains the configuration that I prefer for [tmux](https://tmux.github.io). I've put it in a repository to facilitate adding this to multiple machines.

## Installation
Recursively clone this into the `~/.tmux` directory. Then create a link:

    ln -s ~/.tmux/tmux.conf ~/.tmux.conf

You'll have to install any plugins as well. I have used [Hombrew]{https://brew.sh} to simplify the installation.

## Plugins
Listed below are the plugins I use. They are all managed by the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) which is a git submodule of this repository.

- [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect) Restore `tmux` environment after system restart. 
- [tmux-plugins/tmux-cpu](https://github.com/tmux-plugins/tmux-cpu) Plug and play cpu percentage and icon indicator for Tmux.
