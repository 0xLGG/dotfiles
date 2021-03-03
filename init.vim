" prevents us from having to use zz and starts to scroll with an offset of 8
set scrolloff=8

" fix those weird spacings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" i forgot what that one does... how wants to fix this?
set exrc

" thick cursor... always
set guicursor=

" errors flash screen rather than emit beep
set visualbell

" line numbers and distances
set relativenumber
set number

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ayu-theme/ayu-vim'

Plug 'ollykel/v-vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

" a very awesome looking theme! 
" might be a little to dark on the relative numbers and such 
" but already 100 times better then defaults
set termguicolors
let ayucolor="dark"
colorscheme ayu

" V LANG
" https://github.com/ollykel/v-vim
" Enable automatically formatting file via "v fmt -" before writing buffer.
let g:v_autofmt_bufwritepre = 1

" REMAP REMAPS START HERE
" defining the leader key, here space
let mapleader = " "
" n -> the mode here normal
" nore -> not recursive to end of line 
" pv just an arbitrary name here for project-view
nnoremap <leader>pv :Vex<CR>
" source file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" fuzzy finder in git repo
nnoremap <C-p> :GFiles<CR>
" when not in a git repo for fzf finder
nnoremap <leader>pf :Files<CR>
" from the primeagen. An example with quickfixlists
" they can be created by let's say :grep verb .
" I don't know if I love these remaps yet.  I am considering doing
" <leader>c(k|j|o)
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-E> :copen<CR>

" TELESCOPE
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

