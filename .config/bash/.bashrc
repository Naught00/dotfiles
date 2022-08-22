#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PS1="[\u] \w> "
alias new='launch alacritty --working-directory=.'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/nvim'
export MANWIDTH=80
export EDITOR=/usr/bin/nvim
set -o vi
bind '"\C-a":"cd $(fd . | sk)\n"'
alias info='info --vi-keys'
source /etc/profile.d/vte.sh
export PROMPT_COMMAND=prompt_command.sh
cd $(cat /tmp/whereami)
