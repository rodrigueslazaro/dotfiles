set number 
set nocompatible
filetype plugin on
syntax on
let mapleader = "\<Space>"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set linebreak

call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>l :Limelight!!<CR>
let g:limelight_conceal_ctermfg = 'gray'
let g:vimwiki_list = [{'path': '~/apekor/'}]
nnoremap j gj
nnoremap k gk
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+2<CR>gv=gv
autocmd BufRead,BufNewFile *.wiki :Goyo 80
nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
