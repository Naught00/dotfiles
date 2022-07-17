#!/bin/bash
cp ~/.config/i3/config ~/git/dotfiles/.config/i3/config
shopt -s extglob
cp -r ~/.config/nvim/!(pack) ~/git/dotfiles/.config/nvim/
cp ~/.bashrc ~/git/dotfiles/.config/bash/.bashrc
cd ~/git/dotfiles/
git commit -a
