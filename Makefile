all: xresources vim git aliases for-arch tmux

install:
	@echo 'Dummy target. See more details in Makefile'

xresources:
	@cp -f ./files/Xresources ~/.Xresources && \
	mkdir -p ~/.config/Xresources.d && \
	cp -Rf ./files/config/Xresources.d/* ~/.config/Xresources.d && \
	xrdb -load ~/.Xresources

vim:
	@sh configurators/vim.sh

git:
	@sh configurators/git.sh

tmux:
	@cp -f files/tmux.conf ~/.tmux.conf

aliases:
	@cp -f files/aliases ~/.aliases

for-arch:
	@cat for_arch/aliases >> ~/.aliases
