#! /bin/bash
set -eu

# requirements
which git &>/dev/null
which curl &>/dev/null
which zsh &>/dev/null
if [[ ! -e ~/.zshrc  ]]; then
  exit 1
fi

# install brew in not found
if command -v brew 1>/dev/null 2>&1; then
  echo "passed [brew]"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ -e "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  fi
fi

# install packages using brew
# xz is required to install clangd language server in vim-lsp-settings
brew install \
    vim	\
    wget \
    tree \
    tmux \
    bat	\
    xz \
    pre-commit \
    gh \
    xsel

