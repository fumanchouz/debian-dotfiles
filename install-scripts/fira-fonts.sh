#! /bin/bash

FOLDER=~/fira-fonts
FONTS_FOLDER=~/.local/share/fonts

git clone https://github.com/mozilla/Fira $FOLDER

if [ ! -d $FONTS_FOLDER ]; then
	mkdir -p $FONTS_FOLDER
fi

mv $FOLDER/ttf/* $FONTS_FOLDER
