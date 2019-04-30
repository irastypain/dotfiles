all: xresources vim git aliases for-arch

xresources:
	@cp -f ./files/Xresources ~/.Xresources && \
	mkdir -p ~/.config/Xresources.d && \
	cp -Rf ./files/config/Xresources.d/* ~/.config/Xresources.d && \
	xrdb -load ~/.Xresources

vim:
	@cp -f files/vimrc ~/.vimrc

git:
	@mkdir -p ~/projects/home ~/projects/work ~/projects/oss && \
	cp -f files/gitignore_global ~/.gitignore_global && \
	cp -f files/gitconfig ~/.gitconfig

aliases:
	@cp -f files/aliases ~/.aliases

for-arch:
	@cat for_arch/aliases >> ~/.aliases
