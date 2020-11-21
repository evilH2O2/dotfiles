#!/bin/bash



# Add ~/bin to the $PATH
if [[ ! "$(echo $PATH | grep -o "$HOME/bin" | head -1)" == "$HOME/bin" ]]; then
    # echo "~/bin in PATH"
    if [ -d "$HOME/bin" ]; then
        export PATH="$HOME/bin:$PATH"
    fi
fi


# load env files
for file in ~/.{git_prompt,bash_prompt,functions,exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file



# All Options : 
# https://www.computerhope.com/unix/bash/shopt.htm

# 不需要 cd 直接输入目录名(~invalid~)
shopt -s autocd;


# 添加到 bash history文件，而不是覆盖它
shopt -s histappend;

# 以大小写不敏感的方式匹配文件名
shopt -s nocaseglob;



for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done


### 以不区分大小写的方式补全文件
bind "set completion-ignore-case on"

# Bash autocomplete like zsh
# https://superuser.com/questions/288714/bash-autocomplete-like-zsh
#bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'


# Form : https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile
# Add tab completion for many Bash commands

#if which brew &> /dev/null && [ -r "$(brew --prefix)"/usr/local/etc/profile.d/bash_completion.sh"" ]; then
#	# Ensure existing Homebrew v1 completions continue to work
#	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/usr/local/etc/bash_completion.d";
#	source "$(brew --prefix)/usr/local/etc/profile.d/bash_completion.sh";
#elif [ -f /usr/local/etc/bash_completion ]; then
#    source /usr/local/etc/bash_completion
#fi
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
