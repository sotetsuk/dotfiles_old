#! /bin/bash

#######################################################################################################
# dotfiles
#######################################################################################################
dotfiles="
.vimrc
.gitconfig
.ideavimrc
.tmux.conf
.zshrc.common
.local/bin/tmx
.local/bin/tmux-git-curr-branch
.local/bin/tmux-git-status
"

mkdir -p ~/.local/bin
for dotfile in ${dotfiles}; do
    ln -sfnv $(pwd)/${dotfile} ~/${dotfile}
done

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
# pyenv
#######################################################################################################

if [[ ! -e ~/.pyenv ]]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

#######################################################################################################
# fzf
#######################################################################################################
if [[ ! -e ~/.fzf ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all --key-bindings --completion --update-rc
fi

echo "fzf install is finished!"

#######################################################################################################
# bat
#######################################################################################################
if [[ -z $(which bat) && -n $(which batcat) ]]; then
    ln -sfnv $(which batcat) ~/.local/bin/bat
fi

echo "bat install is finished!"
