#!/bin/sh

[ ${SHELL##/*/} != "zsh" ] && echo '建议 shell使用 Zsh: `chsh -s /usr/bin/zsh`'

echo -e "\033[32m[*]\033[0m (Deploying settings)正在部署设置……\n"
echo -e "\033[32m[*]\033[0m dotfiles --> $HOME/BackUp\n"
dir="$HOME/BackUp"
if [[ ! -d $dir ]]; then  
	mkdir -p $dir
fi

cd $dir
git clone https://github.com/evilH2O2/dotfiles.git
cd dotfiles
sh bin/dotfile.sh
