# Introduction

A list of useful linux commands.

## History cmd

`history` This will give you a list of all of the commands that you have previously run with a number next to them. To run one of these commands, say 25.

`!25` And this will run this command again without the need of having to type it in.

`!ls` This will run the ls command exactly how you ran it the last time that you ran it. Lets say you ran `ls -la` This will run it this way again.
For example if you needed to open vim the exact same way that you did the last time.
simpley `!vim` will do the trick.

`!!`
Often I run a command and forget to put sudo before it. Instead of typing all of the command out again with sudo at the beginning I can just type
`!! sudo` and this will run the command as a sudo user.
!! will rerun the last command. !-1 will do the same thing.

### reverse i-search

`ctrl+r` and then type in part of the command you want to run. This will search for a command using that text and put it on the command line for you ready to press enter and run it.

### Stringing commands

`sudo apt update; sudo apt upgrade -y`\
or \
`sudo apt update && sudo apt upgrade -y`

The first method will run both commands always.
The second methon will run the second command only is the first a status(0) ie success.

### less

The problem with cat is it scrolls through the document and leaves you at the end of the document. What if you have a long document and you need to start viewing it from the top. Use less.
`less mydoc.txt`

### grep

To serch for specific text in a file.

`grep "textlookingfor" filename`

A case-insensitive search for the word 'bar'
`grep -i 'bar' file`

To search all files in the current directory and in all of its subdirectories.
`grep -R 'foo`

#### file search

Search /etc/passwd file for boo user enter
`grep boo /etc/passwd`

### clear

To clear the terminal instead on entering `clear` just hit `ctrl+L` or `ctrl+l`

### Alternative man page

First you will need to install it.
`tldr`

Fedora install

## Mounting

### Root access

A quick way to give yoursels root access

```
sudo -i
```

To find the id of an user and the groups that he belongs to.

```
id -u [username]
```

### Hardware devices

Ways to list hardware devices on your machine

```
df -hf
```

```
fdisk
```

```
lsblk
```

```
blkid -o ls
```

### Mounting

Any of the above commands will give you a list of the devices.
And if they are mounted.


### netstat
To check what ports a service is listening on
```
sudo netstat -lnp | grep redis
```

