set runtimepath+=~/.vim
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype indent plugin on

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

"plugin mappings"
nnoremap <F5> :GundoToggle<CR>
map <C-n> :NERDTreeToggle<CR>
