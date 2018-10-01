#!/bin/bash

# .Xresources
cp -f ./files/Xresources ~/.Xresources && \
mkdir -p ~/.config/Xresources.d && \
cp -Rf ./files/config/Xresources.d/* ~/.config/Xresources.d && \
xrdb -load ~/.Xresources

# .gitconfig
cp -f ./files/gitconfig ~/.gitconfig

# .gitignore_global
cp -f ./files/gitignore_global ~/.gitignore_global

# .vimrc
cp -f ./files/vimrc ~/.vimrc

