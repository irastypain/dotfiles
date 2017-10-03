#!/bin/bash

cp -f ./.Xresources ~/.Xresources && \

mkdir -p ~/.config/.Xresources.d && \

cp -Rf ./.config/.Xresources.d/* ~/.config/.Xresources.d && \

xrdb -load ~/.Xresources
