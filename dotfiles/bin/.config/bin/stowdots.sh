#!/bin/bash

DOTS_DIR=$HOME/dots/dotfiles
CONFIG_DIR=$HOME/.config
UP_DIR=$DOTS_DIR/$1

test ! -d "$UP_DIR/.config" && mkdir -pv "$UP_DIR/.config"
mv -v $CONFIG_DIR/$1 $UP_DIR/.config
cd $DOTS_DIR; stow -vt ~ $1 && dunstify -u low "Stow Complete!"
