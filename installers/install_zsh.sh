#!/bin/bash
set -eu

if command -v zsh 1>/dev/null 2>&1; then
  echo "zsh found."
else
  # install zsh
  sudo apt update
  sudo apt install -y zsh
fi

# install oh my zsh.
if [[ ! -e ~/.oh-my-zsh ]]; then 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# NOTE: you may need to change the default shell by `chsh -s $(which zsh)`
