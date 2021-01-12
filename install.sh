#! /bin/bash

# dotfiles
ln -sfnv $(pwd)/.vimrc ~/.vimrc
ln -sfnv $(pwd)/.gitconfig ~/.gitconfig
ln -sfnv $(pwd)/.ideavimrc ~/.ideavimrc
ln -sfnv $(pwd)/.tmux.conf ~/.tmux.conf
ln -sfnv $(pwd)/.zshrc.common ~/.zshrc.common

# bin
mkdir -p ~/.local/bin
ln -sfnv $(pwd)/.local/bin/tmx ~/.local/bin/tmx

# zsh
if [[ -z $(echo ${SHELL} | grep zsh) ]]; then 
    chsh -s $(which zsh); 
fi
touch ~/.zshrc
# if .zshrc exists and the last line does not include .zshrc.common, include it
if [[ -z $(cat ~/.zshrc | grep "source ~/.zshrc.common") ]];  then
    echo "" >> ~/.zshrc;
    echo "# Automatically added" >> ~/.zshrc;
    echo "source ~/.zshrc.common" >> ~/.zshrc; 
fi 
