set nocompatible
syntax enable
set path+=**
set wildmenu
set number
set cursorline
set splitright
set splitbelow
let mapleader=','
let maplocalleader=','
set ruler
set colorcolumn=80
set encoding=utf-8
set t_Co=256
set noswapfile
nnoremap Q <nop>
set timeout
set timeoutlen=3000
set ttimeoutlen=100
set autoindent
set smartindent

" set tab width and indentination as 2 spaces
set tabstop=2
set shiftwidth=2

set clipboard=unnamedplus
set paste
set backspace=indent,eol,start
set foldmethod=syntax
set foldlevelstart=99
let javaScript_fold=99
set fileformats=unix,mac,dos

" --- PERSISTENT HISTORY ---
set undofile
set undodir=$XDG_CACHE_HOME/vim/undo
au BufWritePre /tmp/* setlocal noundofile " do not trach file history for /tmp/
" -------------------------
autocmd BufWritePre * %s/\s\+$//e

set autoread

set wildignore=*.pyc,*.orig

set updatetime=250

" spell checking and grammar
"
set thesaurus+=$HOME/.vim/thesaurus
autocmd FileType markdown asciidoc setlocal spell

set tags=./.tags,./tags,.tags,tags
