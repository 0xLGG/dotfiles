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

" will make a buffer modifiable
set modifiable


" https://stackoverflow.com/a/4631956 encountered when editing a .csv
set binary

" some people like Vim to always change to the current file's directory
" set autochdir

call plug#begin('~/.vim/plugged')
" fuzzyfinder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git stuff shamless copied from this vid
" https://www.youtube.com/watch?v=PO6DxfGPQvw&t=317s
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" my theme ... maybe I will try gruvbox at some point
" Plug 'ayu-theme/ayu-vim'
" ok let us actually tryouot gruvbox this time
Plug 'morhetz/gruvbox'

" telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" language specific stuff
Plug 'ollykel/v-vim'

" Conqueror of Completion (the CoC stuff)
" use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Syntax highlighting for CJSON in Vim
Plug 'neoclide/jsonc.vim'

" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()


" a very awesome looking theme! 
" might be a little to dark on the relative numbers and such 
" but already 100 times better then defaults
set termguicolors
" let ayucolor="dark"
" colorscheme ayu
colorscheme gruvbox

" V LANG
" https://github.com/ollykel/v-vim
" Enable automatically formatting file via "v fmt -" before writing buffer.
let g:v_autofmt_bufwritepre = 1

" airline (git stuff theme)
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" LSP CONFIG STARTS HERE 
" tsserver https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
" from ThePrimeagen https://youtu.be/tOjVHXaUrzo?t=281
" adjust one menu and no magic select
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

" LSP CONFIG ENDS HERE 

" REMAP REMAPS STARTS HERE
" defining the leader key, here space
let mapleader = " "
" n -> the mode here normal
" nore -> not recursive to end of line 
" pv just an arbitrary name here for project-view
nnoremap <leader>pv :Vex<CR>
" source file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" CoC config
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" fzf config
" fuzzy finder in git repo
nnoremap <C-p> :GFiles<CR>
" when not in a git repo for fzf finder
nnoremap <leader>pf :Files<CR>

" Git config
nnoremap <leader>gs :G<CR>
nnoremap <leader>gf :diffget //3<CR>
nnoremap <leader>gj :diffget //2<CR>

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
" REMAP REMAPS ENDS HERE

