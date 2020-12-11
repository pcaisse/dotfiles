syntax on
filetype plugin indent on

" 2 space tabs by default
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

syntax enable

if has("termguicolors")
  set termguicolors
endif

" Disable swap files
set noswapfile

" Make regex less magical
set nomagic

" Decrease escape sequence timeout
set timeout timeoutlen=1000 ttimeoutlen=100

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

" Toggle paste/nopaste to avoid auto-indenting when pasting
set pastetoggle=<leader>z

" Case-sensitive asterisk searching
nnoremap <silent>  * :let @/='\C\<' . expand('<cword>') . '\>'<CR>:let v:searchforward=1<CR>n
nnoremap <silent>  # :let @/='\C\<' . expand('<cword>') . '\>'<CR>:let v:searchforward=0<CR>n
nnoremap <silent> g* :let @/='\C'   . expand('<cword>')       <CR>:let v:searchforward=1<CR>n
nnoremap <silent> g# :let @/='\C'   . expand('<cword>')       <CR>:let v:searchforward=0<CR>n

" Auto-reload files that have changed on disk
autocmd! FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

let mapleader = "\<Space>"

" Buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
nnoremap <Leader>d :bd<CR>

" Change tab widths
map <leader>t2 :set ts=2 sw=2 sts=2 et<CR>
map <leader>t4 :set ts=4 sw=4 sts=4 et<CR>

" Text width
set textwidth=100

" Vertical rule
set colorcolumn=100

set mouse=a

" Fix issue with broken syntax highlighting
autocmd BufEnter * :syntax sync fromstart

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-eunuch'
Plug 'idris-hackers/idris-vim'
Plug 'Shougo/vimshell.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

" colorscheme
Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Ale
let g:ale_set_highlights = 0
let g:ale_linters = {'typescript': []}

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
" Respect .gitignore via default command
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" Configuration for TypeScript
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" Configuration for prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Format JSONC correctly
autocmd FileType json syntax match Comment +\/\/.\+$+

" Configuration for coc.nvim
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>

" Use K to either doHover or show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Change text color for coc compiler error messages
hi! CocErrorSign guifg=#e06c75

" Grepper
nnoremap <leader>g :Grepper -tool ag<cr>
" Search word under cursor
nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>
" Close Grepper quickfix window on ESC
autocmd FileType qf nnoremap <buffer><silent> <esc> :quit<cr>
" Prompt quotes when grepping automatically
let g:grepper = {}
let g:grepper.prompt_quote = 1

" Macros
let @p = 'Oimport pdb; pdb.set_trace()'
let @c = 'Vgc'

" Copy current file path to system clipboard
nmap cp :let @+ = expand("%")<cr>
