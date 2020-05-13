## Introduction
How to set up vim


How to setup a template.

create a directory .vim and place a file in it sh_header.temp
This will be the header you want to see when you create a new file.
This header is included here.
Then add the following line.

au bufnewfile *.sh 0r /home/joseph/.vim/sh_header.temp
