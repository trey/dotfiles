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
	cp $DOTFILES/git/config-example $DOTFILES/git/config
	ln -s $DOTFILES/git/config $HOME/.config/git/config
fi

if [ -f $HOME/.config/git/excludes ]; then
	echo "$HOME/.config/git/excludes already exists, skipping"
else
	ln -s $DOTFILES/git/excludes $HOME/.config/git/excludes
fi

if [ -f $HOME/.config/bat/config ]; then
	echo "$HOME/.config/bat/config already exists, skipping"
else
	ln -s $DOTFILES/shell/bat.conf $HOME/.config/bat/config
fi

if [ -f $HOME/.zshrc ]; then
	echo "$HOME/.zshrc already exists, skipping"
else
	ln -s $DOTFILES/shell/zshrc $HOME/.zshrc
fi

if [ -f $HOME/.config/ghostty.conf ]; then
	echo "$HOME/.config/ghostty.conf already exists, skipping"
else
	ln -s $DOTFILES/shell/ghostty.conf $HOME/.config/ghostty/conf
fi

if [ -f $HOME/.hammerspoon/init.lua ]; then
	echo "$HOME/.hammerspoon/init.lua already exists, skipping"
else
	ln -s $DOTFILES/helix/init.lua $HOME/.hammerspoon
fi

if [ -f $HOME/.config/helix/config.toml ]; then
	echo "$HOME/.config/helix/config.toml already exists, skipping"
else
	ln -s $DOTFILES/helix/config.toml $HOME/.config/helix
fi

if [ -f $HOME/.config/helix/languages.toml ]; then
	echo "$HOME/.config/helix/languages.toml already exists, skipping"
else
	ln -s $DOTFILES/helix/languages.toml $HOME/.config/helix
fi
