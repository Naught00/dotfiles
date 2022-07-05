#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
alias new='gnome-terminal --working-directory="$PWD"'
alias thisdir="launch alacritty --working-directory ."
