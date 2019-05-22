filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'beigebrucewayne/Turtles'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'davidhalter/jedi-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'w0rp/ale'
Plugin 'galooshi/vim-import-js'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-surround'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'mileszs/ack.vim'

" MARKDOWN plugins
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" distract free mode
Plugin 'junegunn/goyo.vim'

Plugin 'crusoexia/vim-monokai'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-mucomplete'

" --- Typescript --------------------------------------
" ** syntax
Plugin 'leafgarland/typescript-vim'
" ** DOM keywords
Plugin 'HerringtonDarkholme/yats.vim'
" ** language service tool
Plugin 'Quramy/tsuquyomi'
" ** TSX
Plugin 'ianks/vim-tsx'
" --- Typescript --------------------------------------
"

Plugin 'scrooloose/nerdcommenter'

Plugin 'styled-components/vim-styled-components'

call vundle#end()

filetype plugin on
