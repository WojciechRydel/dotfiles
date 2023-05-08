HOME_PACKAGES=$(shell find home/ -mindepth 1 -maxdepth 1 -type d -exec basename {} \;)
ROOT_PACKAGES=$(shell find root/ -mindepth 1 -maxdepth 1 -type d -exec basename {} \;)

home:
	stow --dir=home --target=$(HOME) $(HOME_PACKAGES)

root:
	sudo stow --dir=root --target=/ $(ROOT_PACKAGES)


.PHONY: home root
