.ONE_SHELL:

PACMAN = /usr/bin/pacman
PACMAN_FLAGS = --noconfirm

TMUX = /usr/bin/tmux
TMUX_CONF = ${HOME}/.tmux.conf

VIM = /usr/bin/vim
VIMRC = ${HOME}/.vimrc

GIT_CONFIG = ${HOME}/.gitconfig
GIT = /usr/bin/git
GITIGNORE_GLOBAL = ${HOME}/.gitignore_global

RANGER = /usr/bin/ranger

HOME_BIN = ${HOME}/.bin

install: tmux vim binaries git

tmux: ${TMUX_CONF}

vim: ${VIMRC}

${VIMRC}: ${VIM}
	-ln -s ${DOTFILES}/vim/vimrc $@

${VIM}:
	sudo $(PACMAN) $(PACMAN_FLAGS) vim

${TMUX_CONF}: $(TMUX)
	-ln -s ${DOTFILES}/tmux.conf $@

$(TMUX):
	sudo $(PACMAN) $(PACMAN_FLAGS) tmux

binaries: ${HOME_BIN}
	-ln -s ${DOTFILES}/bin/* $<

${HOME_BIN}:
	-mkdir $@

git: ${GIT_CONFIG}
	sudo $(PACMAN) $(PACMAN_FLAGS) git

${GIT_CONFIG}: ${GITIGNORE_GLOBAL}
	-ln -s ${DOTFILES}/.gitconfig $@

${GITIGNORE_GLOBAL}:
	-ln -s ${DOTFILES}/.gitignore_global $@

${RANGER}:
	sudo $(PACMAN) $(PACMAN_FLAGS) ranger
.PHONY: install tmux vim binaries git
