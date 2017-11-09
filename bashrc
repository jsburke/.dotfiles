# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

source ~/.bash_alias
source ~/.bash_fn
source ~/.bash_local

# don't duplicate things in history
HISTCONTROL=ignoreboth

# append history
shopt -s histappend

# for setting history length
HISTSIZE=1000
HISTFILESIZE=2000

# update window params after commands, resize text
shopt -s checkwinsize

# set up bash prompts
export PS1='\[\e[92m\]\u@\h:\[\e[m\]\[\e[96m\]\w\$\[\e[m\] '
export PS2='continue -->'
