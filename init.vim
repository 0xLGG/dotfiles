" prevents us from having to use zz and starts to scroll with an offset of 8
set scrolloff=8

" fix those weird spacings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

# i forgot what that one does... how wants to fix this?
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
call plug#end()

" a very awesome looking theme! 
" might be a little to dark on the relative numbers and such 
" but already 100 times better then defaults
set termguicolors
let ayucolor="dark"
colorscheme ayu

" defining the leader key, here space
let mapleader = " "
" n -> the mode here normal
" nore -> if not here can executre more commands?
" pv just an arbitrary name here for project-view
nnoremap <leader>pv :Vex<CR>
" source file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" fuzzy finder in git repo
nnoremap <C-p> :GFiles<CR>
" when not in a git repo for fzf finder
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
