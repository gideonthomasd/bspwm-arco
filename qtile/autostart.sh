#!/bin/sh

lxpolkit &
xcompmgr &
sxhkd -c $HOME/.config/bspwm/sxhkdrc &
~/.config/bspwm/testwallpaper &
