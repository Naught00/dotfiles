#!/bin/bash
# A script that compiles my markdown notes into html and opens in luakit
filename=$1
name="${filename%.*}"
cat $1 | marked > $name.html
luakit file:///home/naught/notes/$name.html
rm -rf ~/notes/$1
