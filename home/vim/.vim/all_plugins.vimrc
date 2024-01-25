filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'beigebrucewayne/Turtles'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
Plugin 'editorconfig/editorconfig-vim'

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

Plugin 'scrooloose/nerdcommenter'

Plugin 'ledger/vim-ledger'

" Typescript
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'

" todo.txt
Plugin 'freitass/todo.txt-vim'

" spellchecker
Plugin 'dpelle/vim-LanguageTool'

Plugin 'davidhalter/jedi'

Plugin 'aklt/plantuml-syntax'

Plugin 'hashivim/vim-terraform'

Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

call vundle#end()

filetype plugin on
