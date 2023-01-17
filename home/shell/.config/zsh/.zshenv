export TERMINAL=/usr/bin/kitty
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim

export HISTFILE="${XDG_CACHE_HOME}/zshistory"

if [ -d "${ZDOTDIR}/zsh.d" ]; then
  for DROPIN_FILE in "${ZDOTDIR}"/zsh.d/* ; do
    source "${DROPIN_FILE}"
  done
fi
