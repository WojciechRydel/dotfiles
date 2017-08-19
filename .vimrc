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
colorscheme monokai
let mapleader=','
set ruler
set colorcolumn=80
set t_Co=256
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
Plugin 'vim-scripts/vim-autocomplpop'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

" TAGBAR
nnoremap <F9> :TagbarToggle<CR>
