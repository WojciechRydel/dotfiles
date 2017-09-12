" basic setup
set nocompatible
syntax enable
set path+=**
set wildmenu
set number
set relativenumber
set cursorline
set splitright
set splitbelow
colorscheme turtles
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

set wildignore=*.pyc,*.orig
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"----------- BASIC SETUP

" autoremove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" VUNDLE
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'beigebrucewayne/Turtles'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'davidhalter/jedi-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'ternjs/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'vimwiki/vimwiki'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()

filetype plugin on

" GITGUTTER
"
set updatetime=250


" POWERLINE
let g:airline_theme='dark'
let g:airline#exensions#syntastic#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline_skip_empty_sections=1
let g:airline#extensions#virtualenv#enabled=1
let g:airline_powerline_fonts = 1



" JEDI-VIM
let g:jedi#auto_close_doc=1

" NERDTREE
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>
let NERDTreeIgnore=['\~$', '\.orig$', '\.pyc$']

" TAGBAR
nnoremap <F9> :TagbarToggle<CR>

" MARKDOWN
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd

" jsx
let g:jsx_ext_required = 0

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:vimwiki_list=[{'path': '~/Dropbox/wiki/', 'ext': '.md', 'syntax': 'markdown'}]

" CtrlP
let g:ctrlp_custom_ignore = {
\	'dir': 'node_modules'
\}

" UltiSnips
source ./vim/utlisnips.vim
