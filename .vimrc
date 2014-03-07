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
set splitbelow
set splitright

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
map <C-b> <C-w>s
map <C-a> <C-w>v
nmap <space> zz
nmap n nzz
nmap N Nzz

"resize buffer hotkeys"
nnoremap <C-right> :vertical resize -5<CR>
nnoremap <C-left> :vertical resize +5<CR>
nnoremap <C-up> :resize +5<CR>
nnoremap <C-down> :resize -5<CR>

"plugin mappings"
nnoremap <F5> :GundoToggle<CR>
map <C-t> :NERDTreeToggle<CR>
map <C-g> :ConqueTerm bash<CR>

"python syntax enable"
let python_version_2 = 1

"conque term settings"
let g:ConqueTerm_PyVersion = 2

"auto change directory for each local buffer"
autocmd BufEnter * silent! lcd %:p:h

"cygwin cursor settings (must remove if not using cygwin)"
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
