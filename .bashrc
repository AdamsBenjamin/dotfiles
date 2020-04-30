# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias c='clear'
alias e='exit'

PS1='[\u@\h \W]\$ '

[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
