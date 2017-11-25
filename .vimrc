filetype plugin indent on

" 2 space tabs by default
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" 4 space tabs for Python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

syntax enable
colorscheme monokai
set t_Co=256

if has("termguicolors")
  set termguicolors
endif

" Display line numbers
set number

" Tab completion
set wildmode=longest,list,full
set wildmenu

" Highlight search matches
set hlsearch

" Smart searching
set ignorecase
set smartcase

" Change new window positioning
set splitbelow
set splitright

" Tab and shift-tab to toggle windows
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

" Vertical rule
set colorcolumn=80

set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
