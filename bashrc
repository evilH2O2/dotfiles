#
# ~/.bashrc
# 
# source ~/.bashrc 立即生效
# 可以把这条命令加入到 ~/.bash_profile的最后一行，就不需要每次source

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
PS1='\033[1;31m\u\033[0m\033[0;32m@\033[0m\033[1;36m\h\033[0m \033[34m\W\033[0m ->\033[0,35m\$\033[0m '

alias chromium="chromium --no-sandbox --proxy-server='socks5://127.0.0.1:1080'" 
alias terproxy="export ALL_PROXY=socks5://127.0.0.1:1081"
alias audio="alsamixer"
alias audio-on="amixer sset Master unmute"
alias v2ray="systemctl restart v2ray"
alias google-chrome-stable="google-chrome-stable --no-sandbox --proxy-server='socks5://127.0.0.1:1081'"
alias cat="ccat"
alias vsCode="code --user-data-dir /root"



# Gisto proxy: https://github.com/Gisto/Gisto/issues/237
alias gisto="gisto --args --proxy-server='socks5://127.0.0.1:1080'"

# 自动补全功能(在键盘上按Tab两次)
complete -cf terproxy
complete -cf android-file-transfer
complete -cf audio audio-on v2ray vscode


# nnn top left color
export NNN_CONTEXT_COLORS='2456'

# Color output: https://wiki.archlinux.org/index.php/Color_output_in_console
# grep color
alias grep='grep --color=auto'
# diff color
alias diff='diff --color=auto'
# ls color
alias ls='ls --color=auto'
# 进一步改进ls的彩色输出功能，比如损坏的符号链接显示为红色
eval $(dircolors -b)

# print 256 colors:
# (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
