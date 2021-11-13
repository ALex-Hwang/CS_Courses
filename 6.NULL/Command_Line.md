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
1. > From what we have seen, we can use some ps aux | grep commands to get our jobs’ pids and then kill them, but there are better ways to do it. Start a sleep 10000 job in a terminal, background it with Ctrl-Z and continue its execution with bg. Now use pgrep to find its pid and pkill to kill it without ever typing the pid itself. (Hint: use the -af flags).

```shell
pgrep -af "sleep 20000"
pkill -af "sleep 20000"
```

2. > Say you don’t want to start a process until another completes. How would you go about it? In this exercise, our limiting process will always be sleep 60 &. One way to achieve this is to use the wait command. Try launching the sleep command and having an ls wait until the background process finishes. <br><br>However, this strategy will fail if we start in a different bash session, since wait only works for child processes. One feature we did not discuss in the notes is that the kill command’s exit status will be zero on success and nonzero otherwise. kill -0 does not send a signal but will give a nonzero exit status if the process does not exist. Write a bash function called pidwait that takes a pid and waits until the given process completes. You should use sleep to avoid wasting CPU unnecessarily.

Please refer to it in folder `playground`