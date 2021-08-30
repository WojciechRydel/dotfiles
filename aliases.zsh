alias v=vim
alias rr=ranger
alias jvim='vim -S ~/.jvim/vimrc'

export LEDGER_HOME=$HOME/ledger
alias led="ledger -f $LEDGER_HOME/main.ldg --strict"

alias vldg="vim $LEDGER_HOME/journal.ldg -O $LEDGER_HOME/accounts.ldg +"
alias listen="mpv --no-video"
