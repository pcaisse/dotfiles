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

" Make backspace work normally
set backspace=indent,eol,start

" Fix navigation for wrapped lines
nnoremap j gj
nnoremap k gk

" Tab and shift-tab to toggle windows
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

" Toggle paste/nopaste to avoid auto-indenting when pasting
set pastetoggle=<F3>

let mapleader = "\<Space>"

" Buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
nnoremap <Leader>d :bd<CR>

" Change tab widths
map <leader>t2 :set ts=2 sw=2 sts=2 et<CR>
map <leader>t4 :set ts=4 sw=4 sts=4 et<CR>

" Vertical rule
set colorcolumn=80

set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'elixir-editors/vim-elixir'
Plug 'houtsnip/vim-emacscommandline'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-dirvish'
Plug 'slashmili/alchemist.vim'
Plug 'tweekmonster/wstrip.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'elmcast/elm-vim'
Plug 'thaerkh/vim-workspace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" colorschemes
Plug 'joshdick/onedark.vim'
Plug 'dylanaraps/crayon'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'

call plug#end()

colorscheme onedark
" colorscheme crayon
" colorscheme OceanicNext
" let ayucolor="mirage"
" colorscheme ayu

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Wstrip
let g:wstrip_auto = 1
autocmd FileType *.md,*.diff let b:wstrip_auto = 0

" Ale
let g:ale_set_highlights = 0

" Workspace
nnoremap <leader>s :ToggleWorkspace<CR>

" FZF
map <c-p> :FZF<cr>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
let @c = 'Vgc'
