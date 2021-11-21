#!/bin/bash
set -eu

if [[ -z $(which zsh) ]]; then
    # install zsh
    sudo apt update
    sudo apt install -y zsh
fi

# install oh my zsh.
if [[ ! -e ~/.oh-my-zsh ]]; then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# NOTE: you may need to change the default shell by `chsh -s $(which zsh)`
