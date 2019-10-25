## Introduction
How to implement shell scripting.


## Basic
To get shells available
`cat /etc/shells`

To get the path to the bash
`which bash`

Need to know this so we can add it to the top of the bash script.
It normally will be `/bin/bash`


## Redirect to file

To create a new file file.txt and write to it.
`echo 'hello bash script' > file.txt`

To take input from the terminal and write it to a file.
`cat > file.text`
You will need to press ctrl+d to exit it.

To append the text replace `>` with `>>`
`cat >> file.txt`

