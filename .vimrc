set number

set tabstop=4
set shiftwidth=0
set noexpandtab
set encoding=utf-8
set fileencoding=utf-8

set swapfile
set dir=/tmp

map <esc>[1;5D <C-left>
map <esc>[1;5C <C-right>

execute pathogen#infect()
syntax on
filetype plugin indent on
