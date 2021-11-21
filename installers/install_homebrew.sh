#! /bin/bash
set -eu

which git
which curl
which zsh
if [[ ! -e ~/.zshrc  ]]; then
  exit 1
fi

if [[ -z $(which brew) ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ -e "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi
fi
