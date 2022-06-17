export EDITOR=/usr/bin/vim
export BROWSER=/home/voytech/.local/bin/firefox-dev

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf default command
# use ag(silver search) get file list and also include hidden files into search
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

eval "$(pyenv virtualenv-init -)"

export PATH=/home/voytech/.pyenv/plugins/pyenv-virtualenv/shims:/home/voytech/.pyenv/shims:/home/voytech/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/voytech/.local/bin


source $ZDOTDIR/aliases.zsh
