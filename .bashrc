# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# disable history
set +o history

# I'd normally include these functions in .functions
# but they are very useful here

  # append to a colon separated list like PATH

function colonapp ()
{
  var="$1"
  shift
  export ${var}="${!var:+${!var}:}$(IFS=:; echo "${*}")" 
}

  # source a file if it exists

function include ()
{
  [[ -f "$1" ]] && source "$1"
}

# set up so that I can source easily from root or other users
export BASHRC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

include $BASHRC_HOME/.alias
include $BASHRC_HOME/.functions
include $BASHRC_HOME/.me

# don't duplicate things in history
# don't add certain things too
HISTCONTROL=ignoreboth
HISTIGNORE='ls:ll:l:vim:bye:which *:set -o histexpand:tmux *:c:who:recall *:make:'

# update window params after commands, resize text
shopt -s checkwinsize

# set up bash prompts
parse_git_branch() {
  git branch 2>/dev/null | grep \* | cut -d ' ' -f2,3 | sed -e 's/(//g' -e 's/)//g' 
}

export PS1="\[\e[92m\]\u@\h:\[\e[m\]\[\e[96m\]\w \[\e[m\]\[\e[93m\]\$(parse_git_branch)\[\e[m\]\[\e[97m\]\$ \[\e[m\]"
export PS2='>>'

# default my text editor
export EDITOR=vim

# append history
set -o history
set -o histexpand
