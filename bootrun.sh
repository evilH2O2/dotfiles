#!/bin/bash
set -e

rsync --exclude-from EXCLUDE -avh . ~ \
	&& source ~/.kalirc

if [[ ! -f ~/.config/kitty/kitty.conf ]]; then 
	ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/
fi
