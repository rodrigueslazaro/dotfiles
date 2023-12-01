# BASICS

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/lazaro/.zshrc'
autoload -Uz compinit
compinit

# ALIASES

alias vi="nvim"
alias ww="nvim -c VimwikiIndex"
alias ll="exa -l --icons"
alias ls="exa --icons -T -L=1"

# STARSHIP
eval "$(starship init zsh)"
