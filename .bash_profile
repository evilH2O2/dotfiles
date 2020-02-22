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

# 不需要 cd 直接输入目录名
shopt -s autocd;

# cd 的时候，检查文件名拼写是否有误，
# 大小写、标点等等，若有则改之后在执行命令
shopt -s cdspell;

# 通过访问 Hash 表内已记住的命令的目录直接定位命令，
# 不需要花费时间来 搜索路径目录 定位命令
# 如果不存在，那还是会直接去搜索路径目录
# 通过 hash 输出 hash table
# Form : https://www.computerhope.com/unix/bash/hash.htm
shopt -s checkhash;

# 添加到 bash history文件，而不是覆盖它
shopt -s histappend;

# 以大小写不敏感的方式匹配文件名
shopt -s nocaseglob;



for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done


# Form : https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile
# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)"/usr/local/etc/profile.d/bash_completion.sh"" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/usr/local/etc/bash_completion.d";
	source "$(brew --prefix)/usr/local/etc/profile.d/bash_completion.sh";
elif [ -f /usr/local/etc/bash_completion ]; then
    source /usr/local/etc/bash_completion
fi

