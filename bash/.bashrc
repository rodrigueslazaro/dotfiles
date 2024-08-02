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

export EDITOR=nvim

# aliases

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias vi='nvim'
alias py='python3'
alias rb='source ~/.bashrc'
alias nn='nb add'
alias ne='nb edit'
alias jj='bash $HOME/apekor/scripts/newjournal.bash'
alias pp='bash $HOME/apekor/scripts/newpractice.bash'
alias nn='bash $HOME/apekor/scripts/newnote.bash'

# prompt

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
