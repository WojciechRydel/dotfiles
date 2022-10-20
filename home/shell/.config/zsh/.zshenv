export TERMINAL=/usr/bin/kitty
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim

if [ -d "${ZDOTDIR}/zsh.d" ]; then
  for DROPIN_FILE in "${ZDOTDIR}"/zsh.d/* ; do
    source "${DROPIN_FILE}"
  done
fi

# Node Version Manager
NVM_DIR="${XDG_DATA_HOME}/nvm"
