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
	ln -s vim/vimrc $HOME/.vimrc
	ln -s vim/color/basepurple.vim /usr/share/vim/vim81/colors/basepurple.vim
}

# [rofi]
rofi(){
	ln -s rofi/config.rasi      $HOME/.config/rofi/config.rasi
	ln -s rofi/Light-Theme.rasi $HOME/.config/rofi/Light-Theme.rasi
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
	ln -s polybar/launch.sh               $HOME/.config/polybar/launch.sh
	ln -s polybar/modules.ini             $HOME/.config/polybar/modules.ini
	ln -s polybar/bar-backlight.ini       $HOME/.config/polybar/bar-backlight.ini
	ln -s polybar/bar-keyboard.ini        $HOME/.config/polybar/bar-keyboard.ini
	ln -s polybar/bar-workspace.ini       $HOME/.config/polybar/bar-workspace.ini
	ln -s polybar/Script/check-battery.sh $HOME/.config/polybar/Script/check-battery.sh
	ln -s polybar/Script/check-network.sh $HOME/.config/polybar/Script/check-network.sh
	ln -s polybar/Script/power.sh         $HOME/.config/polybar/Script/power.sh
	ln -s polybar/Script/update.sh        $HOME/.config/polybar/Script/update.sh
}

# [bashrc]
bashrc(){
	ln -s bashrc $HOME/.bashrc
}

# [zsh]
zsh(){
	ln -s zsh/zshrc $HOME/.zshrc
	ln -s zsh/zprofile $HOME/.zprofile
	ln -s zsh/theme/mytheme.zsh-theme $HOME/.oh-my-zsh/themes/mytheme.zsh-theme
}

# [conky]
conky(){
	ln -s conky/conky.conf $HOME/.config/conky/conky.conf
}

# [i3wm]
i3wm(){ 
	ln -s i3/config $HOME/.config/i3/config
}

# [ncmpcpp] 
ncmpcpp(){
	ln -s ncmpcpp/config $HOME/.ncmpcpp/config
}

# [mpd] 
mpd(){
	mkdir -p $HOME/.mpd/playlists
	touch $HOME/.mpd/mpd.db
	touch $HOME/.mpd/mpd.pid
	touch $HOME/.mpd/mpdstate
}
