" prevents us from having to use zz and starts to scroll with an offset of 8
set scrolloff=8

" jump to closing bracket when inserting one
" https://vim.fandom.com/wiki/Moving_to_matching_braces#:~:text=To%20jump%20to%20a%20matching,%2C%20%23elif%20%2C%20%23endif%20.
set showmatch
set matchtime=3

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

" fuzzyfinder
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" my theme ... maybe I will try gruvebox at some point
Plug 'ayu-theme/ayu-vim'

" telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" language plugins
Plug 'ollykel/v-vim'

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

" fzf config
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

