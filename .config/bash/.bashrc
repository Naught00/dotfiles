#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
alias new='launch alacritty --working-directory=.'
alias vim='/usr/bin/nvim'
alias vi='/usr/bin/nvim'
export EDITOR=/usr/bin/nvim
set -o vi
bind '"\C-a":"cd $(fd . | sk)\n"'
