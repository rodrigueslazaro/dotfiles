-- Enable line numbers
vim.opt.number = true
-- Set syntax highlighting
vim.cmd('syntax enable')
-- Use filetype plugins
vim.cmd('filetype plugin on')
-- Set leader key to <Space>
vim.g.mapleader = ' '
-- Use spaces for tabs, set tab width to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Enable line wrapping
vim.opt.linebreak = true

-- Plugins using vimplug
vim.cmd [[
  call plug#begin('~/.vim/plugged')
  Plug 'vimwiki/vimwiki'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'tjdevries/colorbuddy.vim'
  Plug 'jordanbrauer/citylights.nvim'
  call plug#end()
]]

-- Key mappings
vim.api.nvim_set_keymap('n', '<leader>g', ':Goyo<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>l', ':Limelight!!<CR>', {noremap = true})

-- Configure Limelight plugin
vim.g.limelight_conceal_ctermfg = 'gray'

-- Vimwiki configuration
vim.g.vimwiki_list = {{path = '~/apekor/'}}

-- Additional key mappings
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', {noremap = true})
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", {noremap = true})
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+2<CR>gv=gv", {noremap = true})

-- Auto command for Goyo on *.wiki files with line width 80
vim.cmd('autocmd BufRead,BufNewFile *.wiki :Goyo 80')

-- Toggle spell check
vim.api.nvim_set_keymap('n', '<F6>', ':setlocal spell! spelllang=en_us<CR>', {noremap = true})

-- Rquire City Lights theme
require('colorbuddy').colorscheme('citylights')
