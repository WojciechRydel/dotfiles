export TERMINAL=/usr/bin/kitty
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim

export HISTFILE="${XDG_CACHE_HOME}/zshistory"

if [ -d "${ZDOTDIR}/zsh.d" ]; then
  for DROPIN_FILE in "${ZDOTDIR}"/zsh.d/* ; do
    source "${DROPIN_FILE}"
  done
fi

# PATH is settled here, in .zshenv, because .zshenv is the only startup file
# every shell type reads. It used to be assigned in $ZDOTDIR/profile, which is
# login-only, so `zsh -c ...` (git hooks, tmux new-window, command
# substitution) inherited a different precedence than the interactive prompt --
# nvm's node shadowed /usr/sbin/node there and nowhere else.
#
# The drop-ins above (nvm, pyenv, homebrew, golang) have already prepended
# themselves by this point. Asserting the baseline in front of them keeps the
# precedence the login shell has always had, while leaving their directories
# reachable further down PATH. `nvm use` still works: it re-front-loads its own
# entry at runtime.
typeset -U path PATH
path=(
  "$HOME/.pyenv/plugins/pyenv-virtualenv/shims"
  "$HOME/.pyenv/shims"
  "$HOME/.pyenv/bin"
  /usr/local/sbin
  /usr/local/bin
  /usr/sbin
  /usr/bin
  /sbin
  /bin
  /usr/games
  /usr/local/games
  /snap/bin
  "$HOME/.local/bin"
  $path
)
export PATH
