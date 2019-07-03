cd ..
# echo `pwd`

main(){
	vim
	rofi
	polybar
	bashrc
	zsh
	conky
	i3wm
	ncmpcpp
	mpd
}

# [VIM]
vim(){
	ln -s $HOME/dotfiles/vim/vimrc $HOME/.vimrc
	ln -s $HOME/dotfiles/vim/color/basepurple.vim /usr/share/vim/vim81/colors/basepurple.vim
}

# [rofi]
rofi(){
	# ln -s $HOME/dotfiles/rofi      $HOME/.config/rofi
	ln -s $HOME/dotfiles/rofi/config.rasi      $HOME/.config/rofi/config.rasi
	ln -s $HOME/dotfiles/rofi/Light-Theme.rasi $HOME/.config/rofi/Light-Theme.rasi
}

# [polybar]
polybar(){
	dir="$HOME/.config/polybar"
	dirScript="$HOME/.config/polybar/Script"
	if [[ ! -d $dir ]]; then  
		mkdir -p $dir
	fi
	if [[ ! -d $dirScript ]]; then  
		mkdir -p $dir
	fi
	# ln -s $HOME/dotfiles/polybar/launch.sh               $HOME/.config/polybar/launch.sh
	# ln -s $HOME/dotfiles/polybar/modules.ini             $HOME/.config/polybar/modules.ini
	# ln -s $HOME/dotfiles/polybar/bar-backlight.ini       $HOME/.config/polybar/bar-backlight.ini
	# ln -s $HOME/dotfiles/polybar/bar-keyboard.ini        $HOME/.config/polybar/bar-keyboard.ini
	# ln -s $HOME/dotfiles/polybar/bar-workspace.ini       $HOME/.config/polybar/bar-workspace.ini
	# ln -s $HOME/dotfiles/polybar/Script/check-battery.sh $HOME/.config/polybar/Script/check-battery.sh
	# ln -s $HOME/dotfiles/polybar/Script/check-network.sh $HOME/.config/polybar/Script/check-network.sh
	# ln -s $HOME/dotfiles/polybar/Script/power.sh         $HOME/.config/polybar/Script/power.sh
	# ln -s $HOME/dotfiles/polybar/Script/update.sh        $HOME/.config/polybar/Script/update.sh
	
	ln -s $HOME/dotfiles/polybar $HOME/.config/polybar
	# ln -s $HOME/dotfiles/polybar/launch.sh $HOME/.config/polybar/launch.sh
}

# [bashrc]
bashrc(){
	ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
}

# [zsh]
zsh(){
	ln -s $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
	ln -s $HOME/dotfiles/zsh/zprofile $HOME/.zprofile
	ln -s $HOME/dotfiles/zsh/theme/mytheme.zsh-theme $HOME/.oh-my-zsh/themes/mytheme.zsh-theme
}

# [conky]
conky(){
	# ln -s $HOME/dotfiles/conky $HOME/.config/conky
	ln -s $HOME/dotfiles/conky/conky.conf $HOME/.config/conky/conky.conf
}

# [i3wm]
i3wm(){
	# ln -s $HOME/dotfiles/i3 $HOME/.config/i3
	ln -s $HOME/dotfiles/i3/config $HOME/.config/i3/config
}

# [ncmpcpp] 
ncmpcpp(){
	ln -s $HOME/dotfiles/ncmpcpp $HOME/.ncmpcpp
}

# [mpd] 
mpd(){
	ln -s $HOME/dotfiles/mpd/mpd.conf /etc
	mkdir -p $HOME/.mpd/playlists
	touch $HOME/.mpd/mpd.db
	touch $HOME/.mpd/mpd.pid
	touch $HOME/.mpd/mpdstate
}
