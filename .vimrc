set runtimepath+=~/.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype indent plugin on

set number
set modeline
set background=dark
set wildmode=longest,list,full
set wildmenu
let mapleader=","

"pythonic spacing"
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

"supertab python completion"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"key mappings"
inoremap jk <ESC>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"plugin mappings"
nnoremap <F5> :GundoToggle<CR>
map <C-t> :NERDTreeToggle<CR>

"python syntax enable"
let python_version_2 = 1

"cygwin cursor settings (must remove if not using cygwin)"
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
