# tmux Configuration
This repository contains the configuration that I prefer for [tmux](https://tmux.github.io). I've put it in a repository to facilitate adding this to multiple machines.

## Installation
Recursively clone this into the `~/.tmux` directory. Then create a link:

    ln -s ~/.tmux/tmux.conf ~/.tmux.conf

### Plugins
Installing the tmux plugins works well enough. Simply execute

    ctrl-b I

This only installs the tmux plugins, not ViM or any other plugins.

## Plugins
Listed below are the plugins I use. They are all managed by the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) which is a git submodule of this repository.

- [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect) Restore `tmux` environment after system restart. 
