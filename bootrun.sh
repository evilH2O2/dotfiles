#!/bin/bash

rsync --exclude-from EXCLUDE -avh . ~ \
	&& source ~/.kalirc

ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/
