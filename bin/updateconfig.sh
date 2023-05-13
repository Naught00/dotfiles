#!/bin/bash
cp ~/.config/i3/config ~/git/dotfiles/.config/i3/config
shopt -s extglob
cp -r ~/.config/nvim/!(pack) ~/git/dotfiles/.config/nvim/
cp ~/.bashrc ~/git/dotfiles/.config/bash/.bashrc
cp ~/.vimrc ~/git/dotfiles/.config/old/.vimrc
cp ~/.vimrc ~/git/dotfiles/.vimrc
cp /usr/local/bin/updateconfig.sh ~/git/dotfiles/bin/updateconfig.sh
cd ~/git/dotfiles/
git commit -a
git push
