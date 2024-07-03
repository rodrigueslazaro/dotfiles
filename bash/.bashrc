# basic config

case $- in *i*) ;; *) return;; esac

set -o vi

shopt -s checkwinsize
shopt -s globstar

shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# aliases

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias vi='nvim'
alias py='python3'
alias rb='source ~/.bashrc'

# prompt

eval "$(starship init bash)"
