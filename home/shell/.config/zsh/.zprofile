export EDITOR=/usr/bin/vim
export BROWSER=/home/voytech/.local/bin/firefox-dev

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin

# fzf default command
# use ag(silver search) get file list and also include hidden files into search
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

