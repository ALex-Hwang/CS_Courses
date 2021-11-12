# Command Line
## Jobs
- signals

you can use `kill -l` to learn about all the signals.

- fg/bg/nohup

---

## Terminal Multiplexers
We are going to cover `tmux` here.
You can refer to these sites to learn `tmux`:

- [a Quick and Easy Guide to tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
- [linuxcommanD](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

---

## Aliases

try use `alias` more when in terminals.
Don't forget to save all the aliases you created.(in fish you can easily save these by `funcsave xxx`)

---

## Portability
Write conditions in dotfiles to make sure it is compatible on other machines.

---

## Remote Machines

### Copying files over ssh
1. `ssh+tee`: `cat localfile | ssh remote_server tee serverfile`
2. `scp`
3. `rsync`

---

## Exercises

### Job control
