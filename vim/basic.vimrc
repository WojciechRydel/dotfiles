set nocompatible
syntax enable
set path+=**
set wildmenu
set number
set relativenumber
set cursorline
set splitright
set splitbelow
let mapleader=','
set ruler
set colorcolumn=80
set t_Co=256
set noswapfile
nnoremap Q <nop>
set timeout
set timeoutlen=3000
set ttimeoutlen=100
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start
set foldmethod=syntax
let javaScript_fold=1
set foldlevelstart=99
set fileformats=unix,mac,dos

" --- PERSISTENT HISTORY ---
set undofile
set undodir=~/.vim/undodir
au BufWritePre /tmp/* setlocal noundofile " do not trach file history for /tmp/
" -------------------------
autocmd BufWritePre * %s/\s\+$//e
" MARKDOWN
au! BufRead,BufNewFile *.markdown set filetype=markdown
au! BufRead,BufNewFile *.md       set filetype=markdown
" Makefile
autocmd FileType make set noexpandtab
" JSON specyfic
au! BufRead,BufNewFile *.json set textwidth=0

set autoread

set wildignore=*.pyc,*.orig

set updatetime=250
