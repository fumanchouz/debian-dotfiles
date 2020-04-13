#! /bin/bash

FOLDER=~/nerd-fonts
FONTS_FOLDER=~/.local/share/fonts

if [ ! -d $FONTS_FOLDER ]; then
	mkdir -p $FONTS_FOLDER
fi

function git_sparse_clone() (
  rurl="$1" localdir="$2" && shift 2

  mkdir -p "$localdir"
  cd "$localdir"

  git init
  git remote add -f origin "$rurl"

  git config core.sparseCheckout true

  # Loops over remaining args
  for i; do
    echo "$i" >> .git/info/sparse-checkout
  done

  git pull origin master
)

git_sparse_clone "http://github.com/ryanoasis/nerd-fonts" \
                 "~/.local/share/fonts" \
                 "/patched-fonts"

rm -rf .git
