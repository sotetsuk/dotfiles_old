docker run -it --rm -v $(pwd):/dotfiles homebrew/ubuntu20.04:latest sh -c \
    "cd /dotfiles && ./install.sh && zsh ./tests.sh && zsh"
