# dotfiles

All dotfiles are supposed to work in both Mac and Linux. 

**Mac**

```sh
$ cat required.txt | xargs brew install
$ ./install.sh
$ ./tests.sh
```

**Ubungu**

```sh
$ cat required.txt | xargs sudo apt install -y
$ ./install.sh
$ ./tests.sh
```


## LICENSE

MIT
