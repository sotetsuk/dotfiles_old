#!/usr/bin/env zsh

source ~/.zshrc

set -e

# Installed w/ package manager
which git
which git-lfs
which vim
which curl
which tmux
which python3
which pip3

# Installed w/o package manager
which fzf

# Original commands
which tmx

echo "-------------------------------"
echo "All tests passed!"
echo "-------------------------------"
