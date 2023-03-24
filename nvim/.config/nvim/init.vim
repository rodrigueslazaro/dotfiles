set number
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader = "\<Space>"

call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'gray'
let g:goyo_width = 79
nnoremap <leader>g :Goyo<CR>

nnoremap <Leader>d ciwDONE<Esc>
vnoremap <leader>i <Esc>`>a*<Esc>`<i*<Esc>
vnoremap <leader>b <Esc>`>a**<Esc>`<i**<Esc>
