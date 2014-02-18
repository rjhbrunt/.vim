set runtimepath+=~/.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
set modeline
set background=dark
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set wildmode=longest,list,full
set wildmenu
set number

let g:pymode_rope_complete_on_dot = 0

nnoremap <F5> :GundoToggle<CR>
