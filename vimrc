filetype plugin indent on

" 2 space tabs by default
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" 4 space tabs for Python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

syntax enable
set termguicolors

" Display line numbers
set number

" Tab completion
set wildmode=longest,list,full
set wildmenu

" Highlight search matches
set hlsearch

" Retain undo history
set hidden

" Smart searching
set ignorecase
set smartcase

" Change new window positioning
set splitbelow
set splitright

" Don't wrap text
set nowrap

" Tab and shift-tab to toggle windows
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

let mapleader = ";"

" Buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
nnoremap <Leader>d :bd<CR>

" Vertical rule
set colorcolumn=80

set mouse=a

" Remove trailing whitespace
autocmd FileType js,python,elixir,markdown autocmd BufWritePre <buffer> %s/\s\+$//e

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-vinegar'
Plug 'dylanaraps/crayon'
Plug 'jeetsukumaran/vim-buffergator'

call plug#end()

colorscheme onedark
" colorscheme crayon

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
let @c = 'Vgc'
