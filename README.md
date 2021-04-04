![CI](https://github.com/sotetsuk/dotfiles/workflows/CI/badge.svg)

# dotfiles

All dotfiles are supposed to work in both Mac and Ubuntu. 
Homebrew should be preinstalled.

```sh
$ ./install.sh
```

## Development principles

- **Maintanable**: Keep repository small and updated.
- **Idempotent**: `./install.sh` should bring the same results even with multiple runs.

## How to develop

To test the new feature on local machine, use the following command.

```sh
./docker_test.sh
```

## LICENSE

MIT
