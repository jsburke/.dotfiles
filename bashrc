# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# set up so that I can source easily from root or other users
export BASHRC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $BASHRC_HOME/.bash_alias
source $BASHRC_HOME/.bash_fn
source $BASHRC_HOME/.bash_local

# don't duplicate things in history
HISTCONTROL=ignoreboth

# append history
set -o history
set -o histexpand

# update window params after commands, resize text
shopt -s checkwinsize

# set up bash prompts
parse_git_branch() {
  git branch 2>/dev/null | grep \* | cut -d ' ' -f2,3 | sed -e 's/(//g' -e 's/)//g' 
}

export PS1="\[\e[92m\]\u@\h:\[\e[m\]\[\e[96m\]\w \[\e[m\]\[\e[93m\]\$(parse_git_branch)\[\e[m\]\[\e[97m\]\$ \[\e[m\]"
export PS2='>>'

# set up stuff for the bash_setup project
# change this path for easy updates
export BASH_SETUP=$BASHRC_HOME/bash_setup

# autocomplete for Makefile
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

# default my text editor
export VISUAL=vim
export EDITOR="$VISUAL"
