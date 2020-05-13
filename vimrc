" Keep 1000 items in the history.
set history=1000

set ruler

set showcmd
" Shows a menu when using tab completion
set wildmenu
" Keeps the cursor off the top and bottom of the screen by 5 lines
set scrolloff=5

" Highlight search options
set hlsearch

" Hightlight text as you are typing it in at the command 
set incsearch

set ignorecase
" Tells to ignore ignorecase if the search pattern contains uppercase letters
set smartcase
" Set line numbers
set number

" Stops line breaking over words
set lbr
" Set auto indent
set ai

" Set smart indent if you are using si setting you should be using auto indent
" as well.
set si

" if you are using a dark background set the following setting to dark
" if you are uning a light background then set it to light
set bg=dark
colorscheme darkblue

au bufnewfile *.sh 0r /home/joseph/.vim/sh_header.temp