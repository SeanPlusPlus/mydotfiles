" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1

" nerdtree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" solarized
let g:solarized_termcolors=256
set background=dark
syntax enable
colorscheme solarized

" navigation
map <M-j> <C-w>r
map <M-k> <C-w>R
map <M-h> <C-w>R
map <M-l> <C-w>r

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" indentation
autocmd FileType go :setlocal noexpandtab sw=2 ts=2 sts=2 " Two spaces real tab for Go files "
autocmd FileType python :setlocal expandtab sw=4 ts=4 sts=4 " Four spaces for Python "

" commenting
filetype plugin on
let mapleader = ","
let g:mapleader = ","
let maplocalleader=","
let g:maplocalleader=","

" line nums
:set nu!
