filetype plugin indent on

" 2 space tabs by default
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" 4 space tabs for Python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

syntax enable

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

" Retain undo history
set hidden

" Smart searching
set ignorecase
set smartcase

" Change new window positioning
set splitbelow
set splitright

" Wrap text
set wrap

set noesckeys

" Fix navigation for wrapped lines
nnoremap j gj
nnoremap k gk

" Tab and shift-tab to toggle windows
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

let mapleader = "\<Space>"

" Buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
nnoremap <Leader>d :bd<CR>

" Vertical rule
set colorcolumn=80

set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'dylanaraps/crayon'
Plug 'justinmk/vim-dirvish'
Plug 'slashmili/alchemist.vim'
Plug 'tweekmonster/wstrip.vim'

call plug#end()

colorscheme onedark
" colorscheme crayon

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Wstrip
let g:wstrip_auto = 1
autocmd FileType *.md,*.diff let b:wstrip_auto = 0

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
let @c = 'Vgc'
