source $DOTFILES/vim/basic.vimrc

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

" auto-completion for quotes, parens, brackets etc.
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'mileszs/ack.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'ledger/vim-ledger'
" --- Typescript --------------------------------------
"

Plugin 'scrooloose/nerdcommenter'

call vundle#end()

filetype plugin on

colorscheme turtles

source $DOTFILES/vim/config/plugins/airlane.vimrc

source $DOTFILES/vim/shortcuts.vimrc
source $DOTFILES/vim/config/autocommands.vimrc

source $DOTFILES/vim/config/plugins/jedi.vimrc
source $DOTFILES/vim/config/plugins/nerd_tree.vimrc
source $DOTFILES/vim/config/plugins/jsx.vimrc
source $DOTFILES/vim/config/plugins/you_complete_me.vimrc
source $DOTFILES/vim/config/plugins/util_snips.vimrc
source $DOTFILES/vim/config/plugins/ack.vimrc
source $DOTFILES/vim/config/plugins/vim_markdown.vimrc
source $DOTFILES/vim/config/plugins/ale.vimrc
source $DOTFILES/vim/config/plugins/ale.vimrc
source $DOTFILES/vim/config/plugins/typescript.vimrc

