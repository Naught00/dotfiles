#!/bin/bash
# A script that compiles my markdown notes into html and opens in luakit
# Takes an argument in the form of "file.md"
# Can be easily intergrated into vim with the AsyncRun plugin. ":AsyncRun markdown.sh %"
filename=$1
name="${filename%.*}"
cat $1 | marked > $name.html
luakit file:///home/naught/notes/$name.html
rm -rf ~/notes/$1
