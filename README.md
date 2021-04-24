![ci](https://github.com/sotetsuk/dotfiles/workflows/CI/badge.svg)

# dotfiles

All dotfiles are supposed to work in both Mac and Ubuntu. 
**Homebrew** should be preinstalled.

```sh
$ ./install.sh
```

## Goals

- **Maintanable**: Keep repository small and updated.
- **Idempotent**: `./install.sh` should bring the same results after multiple runs.
- **No root permission**: No root permission is required to install.

## How to develop

To test the new feature on local machine, use the following command.

```sh
./docker_test.sh
```

## LICENSE

MIT
