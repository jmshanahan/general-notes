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

### host

To get the ip address for a domain name.

```
host josephshanahan.biz
host jshanahan.biz
```

### To determine what accounts are on your system

```
awk -F: '($3 >= '1000') {print}' /etc/passwd
```

### Disable root login

Take advantage of pam_securetty module

```
auth [user_unknown=ignore success=ok ignore=ignore default=bad] pam_securetty.so
```

To disabling SSH root logins

Edit /etc/ssh/sshd_config

PermitRootLogin no

systemctl reload sshd

### Virtual consoles

To get to a virtual console tty

```
CTRL + ALT F1 .....
```

### To set the editor that you want to use

To do this set the EDITOR environment variable

```
export EDITOR=nano
```

set it to nano

```
export EDITOR=vi
```

Sets it to vi.

### To check what you can do

```
sudo -l
```

### Syntax checking when for sudo configuration files

```
visudo
```

### LIst services that are running ou your computer

```
netstat -nutlp
```

### Determine which ports are open

nmap is a good tool. It needs to be installed.

Another good one is

The following command will display all of the listening and extablished network connections.

```
lsof -i
```

## SSH

To enforce Key Authentication. ie no password authentication
In teh /etc/ssh/sshd_config
set

```
PasswordAuthentication no
```

To disable root login on an ssh

```
PermitRootLogin no
```

To restrict ssh login to specific users,

```
AllowUsers user1 user2 userN
```

You can do a similar thing with groups

```
AllowGroups group1 ...
```

### Using SSH Port forwarding

For example if you wanted to connect to a mysql database listing on the localhost
use the following

```
ssh -L 3306:127.0.0.1:3306 server1
```

This allows you to use a client on your local machine listening on 3306 to attach it to a database on server1 listening on 3306.

Allowing TCP Port Forwarding is a concern and should be disabled if not required.
To disable TCP Port Forwarding set

```
AllowTcpForwarding no
GatewayPorts no
```

Where possible use SSHv2 instead of SSHv1
To force protocol 2 set the following in the ssh configuration file.

```
Protocol 2
```

By default SSH listens to all ports on the system. If you want to bind it to an host or address set the following

```
ListenAddress host_or_address1
ListenAddress host_or_addressN
```

### Firewall Fundementals

### netcat

nc -v 10.0.0.8 80
