call pathogen#infect()           " loading pathogen
call pathogen#helptags()
set nocompatible

let mapleader=','                " mapping \ to ,

set hidden

set nowrap                       " do wrap lines
set tabstop=4                    " tab stop to 4 spaces
set backspace=indent,eol,start

set number                       " display line numbers

set title                        " setting file as title

set ignorecase                   " ignore case while searching
set smartcase                    " smart search
set incsearch		             " do incremental searching 
" remove search highlight
nnoremap <leader><space> :noh<cr>

set visualbell
set noerrorbells

" mapping : to ; to save some key stokes
nnoremap ; :

" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set hlsearch                     " highlight search terms

" Setting color scheme to rails cast
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
    colorscheme railscasts
else
    colorscheme default
endif

if has("autocmd")
    " enalble file type specific indention
	filetype plugin indent on
endif " has("autocmd")

set tabstop=2
set shiftwidth=2
set expandtab

nnoremap <leader>a :Ack 

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" double percentage sign in command mode is expanded
" " to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" leader F to serach in directory of current file
map <leader>T :CommandTFlush<cr>\|:CommandT %%<cr>

" rails.vim specific shotcuts
nnoremap <leader>rm :Rmodel
nnoremap <leader>rc :Rcontroller
nnoremap <leader>rv :Rview
nnoremap <leader>rs :Rspec
nnoremap <leader>rl :Rlib
nnoremap <leader>ra :A<CR>
nnoremap <leader>rr :R<CR>
