#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

fastfetch

# Created by `pipx` on 2026-04-24 00:10:58
export PATH="$PATH:/home/maxioten/.local/bin"
