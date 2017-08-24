# .bashrc

# Add my local bin dir at the front of the PATH
PATH=~/bin:$PATH

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias x='gnome-terminal&'
alias h='history'
alias ll='ls -Fla --color=auto'
alias cls='clear'

function g() { /usr/bin/gvim "$@" ;}

# git-aware prompt (thanks cartalla!)
PS1="\[\033[0;36;40m\]\u@\h \[\033[0;33;40m\]\D{%a %y-%m-%d %R}\n\[\033[0;32;40m\]\$(prompt_git_top_branch_dir)\[\033[0m\]\$(prompt_nongit_dir 1)\[\033[0m\] \$ "
