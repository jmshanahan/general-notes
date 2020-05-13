## Introduction

How to implement shell scripting.
You can get a good Bash Scripting cheatsheet [Here](https://devhints.io/bash)

Also you can get a vim cheatsheet [Here](https://devhints.io/vim)

## Basic

To get shells available
`cat /etc/shells`

To get the path to the bash
`which bash`

Need to know this so we can add it to the top of the bash script.
It normally will be `/bin/bash`

## Which

To determine which script will execute
`which -a [command]`
To get a list of all scripts with this name
`which -a head`

Somethines you may want to clear the shell cache if for example you deleted a shell script
`hash -r`

## Redirect to file

To create a new file file.txt and write to it.
`echo 'hello bash script' > file.txt`

To take input from the terminal and write it to a file.
`cat > file.text`
You will need to press ctrl+d to exit it.

To append the text replace `>` with `>>`
`cat >> file.txt`

## Groups

To add a user to a group
sudo usermod -aG [group] \${USER}

To check what groups a user is belong to.
id -nG

## Exit status

To capture the last exit status of a command use the following syntax

```
"${?}"
```

These are what is know as special parameters. To get a list of them go to the bash man page and do a search for 'special'

## Password generation

A useful script for password generation.

```
PASSWORD=$(date +%s%N | sha256sum | head -c48)
```

## useradd and adduser

For scripts use useradd
adduser is a perl script that used useradd in the backend
when adding user manually use adduser. It is more friendly.

## Redirecting STDIN

```
sudo passwd --stdin [username] < password
```

In the above example password is a file with a password in the first line
When we run it as is it will set the password for the username. stdin has been redirected to read from the file called password using the <

What is the difference between | (pipe) and > (input redirection)
You use | when you want to redict the output from one command into another command
ie ps | grep texttocheckfor.
But you use > or < when you are redirecting from a file.

## File descriptiors

To redirecto stdout to a file
head -n1 /etc/passwd /etc/hosts 1> head.out
This is the same as
head -n1 /etc/passwd /etc/hosts > head.out
Because by default stdout is assigned to the file descriptor 1

To redirect the output to a file and error messages to another file
head -n1 /etc/passwd /etc/hosts /fackFile > head.out 2>head.err

To redirect stdout and stderr to the same file use the following
head -n1 /etc/passwd /etc/hosts /fackFile > head.both 2>&1

However the above is difficult so new syntax was added to bash
head -n1 /etc/passwd /etc/hosts /fackFile &> head.both

Redirecting pipes to stderr
By default only stdout gets redirected using a pipe |
To redirect both stdout and stderr you need the following systen
head -n1 /etc/passwd /etc/hosts /fackFile | cat -n //-n puts numbers onto it

## Setting colours

```
echo -e "\033[31mError\033[0m"
```

The above will print the text Error in red

RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
RESET="\033[0m"
echo -e ${RED}Error$RESET"
