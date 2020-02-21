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


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell


for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done



# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)"/usr/local/etc/profile.d/bash_completion.sh"" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/usr/local/etc/bash_completion.d";
	source "$(brew --prefix)/usr/local/etc/profile.d/bash_completion.sh";


if [ -f /usr/local/etc/bash_completion ] && ! shopt -oq posix; then
    source /usr/local/etc/bash_completion
fi

# Bash autocomplete like zsh
# https://superuser.com/questions/288714/bash-autocomplete-like-zsh
#bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
