#!/bin/bash
fd . /usr/share/applications/ | xargs -n1 basename | sk | xargs setsid gtk-launch
