shopt -s histappend

export HISTCONTROL=ignoredups
export HISTSIZE=10000
export PROMPT_COMMAND="${PROMPT_COMMAND:-:}; history -a"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
