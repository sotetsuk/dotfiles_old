# dotfiles

All dotfiles are supposed to work in both Mac and Linux. 

**Mac**

```sh
$ cut -f 1 required.tsv | xargs brew install
$ ./install.sh
$ ./tests.sh
```

**Ubungu**

```sh
$ cut -f 2 required.tsv | xargs sudo apt install -y
$ ./install.sh
$ ./tests.sh
```


## LICENSE

MIT
