PACKAGES=$(shell ls -d */)

all:
	stow $(PACKAGES)

.PHONY: all

