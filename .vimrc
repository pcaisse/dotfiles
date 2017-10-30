filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

syntax enable
colorscheme monokai
set t_Co=256

if has("termguicolors")
  set termguicolors
endif

set number

set wildmode=longest,list,full
set wildmenu

set hlsearch

set ignorecase
set smartcase

nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
