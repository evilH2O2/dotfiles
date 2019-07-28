#!/usr/bin/bash

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
	tmux
	terminalizer 
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
	echo -e "\033[33m[!]\033[0 使用　oh-my-zsh，自动下载\n"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	ln -s $HOME/dotfiles/zsh/theme/mytheme.zsh-theme $HOME/.oh-my-zsh/themes/mytheme.zsh-theme
	echo -e "\033[33m[!]\033[0 zsh命令自动补全插件 zsh-autosuggestions\n"
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
	echo -e "\033[33m[!]\033[0 Zsh命令语法高亮插件 zsh-syntax-highlighting\n"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
	echo -e "\033[33m[!]\033[0 Z.lua目录跳转\n"
	git clone https://github.com/skywind3000/z.lua.git $HOME/Downloads/z.lua
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

# [tmux]
tmux(){
	fileOk "$HOME/.tmux.conf" "tmux/tmux.conf" ".tmux.conf"
	echo -e "\033[32m[*]\033[0m 下载插件管理器: tpm\n"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# [terminalizer]
terminalizer(){
	echo -e "\033[33m[!]\033[0m 自行设置 terminalizer配置 \n"
}

main
