colorscheme delek
filetype plugin indent on 
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent
set colorcolumn=0
highlight ColorColumn ctermbg=6

let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"

inoremap jk <ESC>
nnoremap <C-a> <C-w>
nnoremap <silent> <C-M> :nohl<CR><C-l>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
let mapleader = "'"
syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch 

set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'ayu_mirage',
    \ }
set statusline+=%#warningmsg#
set statusline+=%*

call plug#begin()

" Status bar
Plug 'itchyny/lightline.vim'
" Pair Brackets
Plug 'https://github.com/jiangmiao/auto-pairs'
" Theme
Plug 'ayu-theme/ayu-vim'

call plug#end()

set termguicolors
colorscheme ayu
