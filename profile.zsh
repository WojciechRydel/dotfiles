export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

source ~/dotfiles/bin/projects-management

export PATH=$PATH:$HOME/bin:$HOME/Library/Python/3.6/bin

export EDITOR=vim

#GOLANG
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


# aliases
alias v=vim

# notes
function vn {
    (cd ~/Dropbox/notes && vim -c NERDTree)
}

alias rr=ranger

# TMUX
HOME_SESSION=HOME
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach -t $HOME_SESSION || tmux new-session -s $HOME_SESSION)
fi


# tmuxinator autocomplete

source ~/.bin/tmuxinator.zsh


# fzf default command
# use ag(silver search) get file list and also include hidden files into search
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'
