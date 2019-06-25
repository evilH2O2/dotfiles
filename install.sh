if [[ ${SHELL##/*/} != "dzsh" ]]; then
	echo -e "\033[31m[!]\033[0m 推荐使用 zsh shell"
	echo -e "\n\033[33m[?]\033[0m Install Zsh?? "
	echo -e "\033[32m->\033[0m y) Install Zsh and Deployment settings"
	echo -e "\033[32m->\033[0m n) Not install Zsh and Deployment settings"
	echo -e "\033[32m->\033[0m N) Exit\n" 
	read -p "Give me your choose[y/n/N]： " download
	# echo $download
	case $download in
		y ) y | pacman -S zsh | chsh -s /use/bin/zsh;;
		n ) echo "跳过安装 Zsh，直接部署配置";;
		N ) exit 0;;
		*) echo -e "\033[31m[!]\033[0m Please input [y/n/N]"
	esac
	exit 0
fi


echo -e "\033[32m[*]\033[0m (Deploying settings)正在部署设置……"
echo -e "\033[32m[*]\033[0m dotfiles --> $HOME/BackUp"
dir="$HOME/BackUp"
if [[ ! -d $dir ]]; then  
	mkdir -p $dir
fi

cd $dir
git clone https://github.com/evilH2O2/dotfiles.git
cd dotfiles
sh bin/dotfile.sh