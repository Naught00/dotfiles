# dotfiles
This is my dotfile repository. The script is intended for use under Linux.

- Scripts are located in `/bin`
This repo contains dotfiles for some of the software that I most commonly use:
  - vim
  - i3-gaps
  - rofi
  - termite
  - latexmk
  - bash
  - i3status
## Installaion
Clone the dotfiles repository in your directory of choce. This example uses ~/git.
```
$ cd ~
$ mkdir git && cd git
$ git clone https://github.com/Naught00/dotfiles.git
$ cd dotfiles
```
Run the install script to place the files in their correct directory. 
```
./install.sh
Usage: install.sh [options]
  -i, --install       Install all config files
  -v, --vim           Install config for vim
  --i3-gaps           Install config for i3-gaps
  -t, --termite       Install config for termite
  -r, --rofi           Install config for rofi
  --i3status          Install config for i3-status
  -l, --latexmk       Install config files for latexmk
 
