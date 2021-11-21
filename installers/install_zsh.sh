#! /bin/bash
set -eu

if [[ ! $(which zsh) ]]; then
    # install zsh
    apt update
    apt install -y zsh
fi

# install oh my zsh.
if [[ ! -e ~/.oh-my-zsh ]]; then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# NOTE: you may need to change the default shell by `chsh -s $(which zsh)`
