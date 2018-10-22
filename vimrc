filetype plugin indent on

" 4 space tabs by default
set softtabstop=4 tabstop=4 shiftwidth=4 expandtab

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

" Turn on spellcheck for certain file types
autocmd FileType gitcommit setlocal spell
autocmd FileType markdown setlocal spell

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
Plug 'ntpeters/vim-better-whitespace'
Plug 'elmcast/elm-vim'
Plug 'thaerkh/vim-workspace'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'tpope/vim-eunuch'

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

" Ale
let g:ale_set_highlights = 0

" Workspace
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_autosave = 0

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

" Grepper
nnoremap <leader>g :GrepperRg<Space>

" Language servers
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
let @c = 'Vgc'
