![CI](https://github.com/sotetsuk/dotfiles/workflows/CI/badge.svg)

# dotfiles

**Minimum** dotfiles to reproduce the comfortable environment.
All dotfiles are supposed to work in both Mac and Ubuntu. 

**On Mac**

```sh
$ cut -f 1 required.tsv | xargs brew install
$ ./install.sh
$ zsh ./tests.sh
```

**On Ubuntu 20.04**

```sh
$ sudo apt update && sudo apt install -y git
$ cut -f 2 required.tsv | xargs sudo apt install -y
$ ./install.sh
$ zsh ./tests.sh
```

## How to develop

To test the new feature on local machine, use the following command.

```sh
./docker_tests_ubuntu20.04.sh
```

## LICENSE

MIT
