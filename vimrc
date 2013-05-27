call pathogen#infect()
call pathogen#helptags()
set nocompatible

let mapleader=','

set hidden

set nowrap
set tabstop=4
set backspace=indent,eol,start

set number

set title

set visualbell
set noerrorbells

nnoremap ; :

if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme railscasts
else
    colorscheme default
endif
