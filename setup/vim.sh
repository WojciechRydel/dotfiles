function installVim() {
	sudo pacman -S vim
}

function linkVimDirectory() {
	rm -rf $HOME/.vim
	ln -sf $HOME/dotfiles/vim $HOME/.vim
}

function installVimPlugins() {
	vim -c "PluginInstall" -c "qa"
}

function installYouCompleteMe() {
	mkdir $HOME/ycm_build
	(cd $HOME/ycm_build && cmake -G "Unix Makefiles" . $HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp)
}
