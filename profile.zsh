export PATH=$PATH:$HOME/bin:$HOME/Library/Python/3.6/bin

export EDITOR=vim

#GOLANG
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# notes
function vn {
    (cd ~/Dropbox/notes && vim -c Goyo)
}


# TMUX
# HOME_SESSION=HOME
# if which tmux >/dev/null 2>&1; then
#     #if not inside a tmux session, and if no session is started, start a new session
#     test -z "$TMUX" && (tmux attach -t $HOME_SESSION || tmux new-session -s $HOME_SESSION)
# fi


# tmuxinator autocomplete

source ~/dotfiles/tmux/tmuxinator.zsh


# fzf default command
# use ag(silver search) get file list and also include hidden files into search
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'

source ~/dotfiles/aliases.zsh

alias vgo='vim -u ~/.vimrc.go'
export DOTFILES=$HOME/dotfiles

function npx() {
    NPX_PATH=./node_modules/.bin

    if [ ! -d $NPX_PATH ]; then
        echo "no node_modules found"
        return 1
    fi

    if [ ! -d $NPX_PATH/$1 ]; then
        echo "'$1' is not installed!"
        return 1
    fi

    $NPX_PATH/$1 ${@:2}
}

# ssh proxy through lucy
function start_proxy() {
    ssh -D 8123 -f -C -q -N sammy@example.com -p 443
}

export PATH=$PATH:$HOME/dotfiles/bin
