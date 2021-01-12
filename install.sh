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

#######################################################################################################
# zsh
#######################################################################################################
# make zsh as default
if [[ -z $(echo ${SHELL} | grep zsh) ]]; then 
    chsh -s $(which zsh); 
fi
# install oh my zsh.
if [[ ! -e ~/.oh-my-zsh ]]; then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
# if .zshrc exists and the last line does not include .zshrc.common, include it
touch ~/.zshrc
if [[ -z $(cat ~/.zshrc | grep "source ~/.zshrc.common") ]];  then
    echo "" >> ~/.zshrc;
    echo "# Automatically added" >> ~/.zshrc;
    echo "source ~/.zshrc.common" >> ~/.zshrc; 
fi 

#######################################################################################################
# fzf
#######################################################################################################
if [[ ! -e ~/.fzf ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    yes | ~/.fzf/install
fi
