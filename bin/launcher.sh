#!/bin/bash
fd . /usr/share/applications/ ~/.local/share/applications/wine/*/ | grep .desktop | xargs -n1 basename | sk | xargs setsid gtk-launch
