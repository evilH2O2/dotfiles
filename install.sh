#!/usr/bin/sh


# source bin/delConfigFile.sh

[ ${SHELL##/*/} != "zsh" ] && echo '建议 shell使用 Zsh: `chsh -s /usr/bin/zsh`'

echo -e "\033[32m[*]\033[0m 建议将所需配置程序的配置目录删个遍，可以运行　bin/delConfigFile.sh\n"
echo -e "\033[32m[*]\033[0m (Deploying settings)正在部署设置……\n"
echo -e "\033[32m[*]\033[0m dotfiles --> $HOME/dotfiles\n"
# echo -e "\033[32m[*]\033[0m 一次性全部删除[a] or 单独一个个删除[o]\n"
# read -p "告诉我你的选择[a/o] -> " choose
# case $choose in
# 	a ) main;;
# 	o ) one;;
# 	*) echo -e "\n不接受你的反驳"
# esac

git clone https://github.com/evilH2O2/dotfiles.git
cd dotfiles
sh bin/dotfile.sh
