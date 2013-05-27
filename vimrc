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

" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set hlsearch " highlighing search terms

if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme railscasts
else
    colorscheme default
endif
