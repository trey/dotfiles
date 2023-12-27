#!/bin/sh

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

mkdir -p $HOME/.config

if [ -d $HOME/.config/nvim ]; then
  echo "$HOME/.config/nvim already exists, skipping"
else
  ln -s $DOTFILES/nvim $HOME/.config/nvim
fi

if [ -f $HOME/.config/starship.toml ]; then
  echo "$HOME/.config/starship.toml already exists, skipping"
else
  ln -s $DOTFILES/shell/starship.toml $HOME/.config/starship.toml
fi

if [ -f $HOME/.gitconfig ]; then
	echo "$HOME/.gitconfig already exists, skipping"
else
	cp $DOTFILES/git/gitconfig-example $DOTFILES/git/gitconfig
	ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
fi

if [ -f $HOME/.gitexcludes ]; then
	echo "$HOME/.gitexcludes already exists, skipping"
else
	ln -s $DOTFILES/git/gitexcludes $HOME/.gitexcludes
fi

if [ -f $HOME/.zshrc ]; then
	echo "$HOME/.zshrc already exists, skipping"
else
	ln -s $DOTFILES/shell/zshrc $HOME/.zshrc
fi
