filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'beigebrucewayne/Turtles'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
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

Plugin 'scrooloose/nerdcommenter'

Plugin 'styled-components/vim-styled-components'

call vundle#end()

filetype plugin on
