docker run -it --rm -v $(pwd):/dotfiles ubuntu:latest sh -c \
    "apt update && apt install -y git && cd /dotfiles && cut -f 2 required.tsv | xargs apt install -y && ./install.sh && zsh ./tests.sh && zsh"
