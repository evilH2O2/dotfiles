#!/usr/bin/sh

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
	neofetch
	urxvt
}

fileOk(){
	if [[ ! -d $1 ]]; then
		ls -s $HOME/dotfiles/$2 $HOME/$3
		echo -e "\033[32m[*]\033[0m $1 软连接建立完成\n"
	else
		echo -e "\033[33m[?]\033[0m $1 存在,已跳过\n"
	fi
}


# [VIM]
vim(){
	fileOk "$HOME/.vimrc" "vim/vimrc" ".vimrc"

	ln -s $HOME/dotfiles/vim/color/basepurple.vim /usr/share/vim/vim81/colors/basepurple.vim
	echo -e "\033[33m[!]\033[0 使用　vim-plug，自动下载(~/.vim)\n"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

# [rofi]
rofi(){
	fileOk "$HOME/.config/rofi" "rofi" ".config/rofi"
}

# [polybar]
polybar(){
	fileOk "$HOME/.config/polybar" "polybar" ".config/polybar"
}

# [bashrc]
bashrc(){
	# ln -s $HOME/dotfiles/bashrc $HOME/.bashrc

	cp /etc/skel/.bashrc $HOME/.bashrc
	sed -i '/PS1=/d' $HOME/.bashrc
	echo -e "\033[33m[!]\033[0m $HOME/.bashrc 需要检查 PS1 是否需要注释，以及其他配置是否出现错误!!!!!!!\n"
	cat $HOME/dotfiles/bashrc >> $HOME/.bashrc
}

# [zsh]
zsh(){
	ln -s $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
	ln -s $HOME/dotfiles/zsh/zprofile $HOME/.zprofile
	ln -s $HOME/dotfiles/zsh/theme/mytheme.zsh-theme $HOME/.oh-my-zsh/themes/mytheme.zsh-theme
}

# [conky]
conky(){
	fileOk "$HOME/.config/conky" "conky" ".config/conky"
}

# [i3wm]
i3wm(){
	# ln -s $HOME/dotfiles/i3 $HOME/.config/i3
	fileOk "$HOME/.config/i3" "i3" ".config/i3"
}

# [ncmpcpp] 
ncmpcpp(){
	fileOk "$HOME/.ncmpcpp" "ncmpcpp" ".ncmpcpp"

	# ln -s $HOME/dotfiles/ncmpcpp $HOME/.ncmpcpp
}

# [mpd] 
mpd(){
	echo -e "\033[33m[!]\033[0m MPD需要手动设置: # gpasswd -a mpd <your login group>\n"
	echo -e "\033[33m[!]\033[0m $ chmod 710 /home/<your home dir or music dir>\n"
	echo -e "\033[33m[!]\033[0m 建议自行检查 MPD配置文件:　/etc/mpd.conf\n"

	# ln -s $HOME/dotfiles/mpd/mpd.conf /etc
	cat $HOME/dotfiles/mpd/mpd.conf > /etc/mpd.conf

	mkdir -p $HOME/.mpd/playlists
	touch $HOME/.mpd/mpd.db
	touch $HOME/.mpd/mpd.pid
	touch $HOME/.mpd/mpdstate
}

# [neofetch]
neofetch(){
	fileOk "$HOME/.config/neofetch" "neofetch" "neofetch"
}

# [urxvt]
urxvt(){
	fileOk "$HOME/.Xresources" "urxvt/Xresources" ".Xresources"


main
