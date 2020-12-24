#! /bin/bash

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
# zplug
curl -sL --proto-redir -all,https \
	https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
