#!/bin/bash

#if [ ! -d /usr/share/xsessions ]
#then
#sudo mkdir -p /usr/share/xsessions
#fi

############ Make sh executable #######################
cd bspwm
chmod +x bspwmrc
chmod +x testwallpaper
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

#######################################################

if [ ! -d $HOME"/.config" ] 
then mkdir -p $HOME"/.config"
fi

if [ ! -d $HOME"/.config/polybar" ] 
then
mkdir -p $HOME"/.config/polybar"
fi

if [ ! -d $HOME"/.config/bspwm" ]
then
mkdir -p $HOME"/.config/bspwm"
fi
#[ -d $HOME"/dwm-bar" ] || mkdir -p $HOME"/dwm-bar"

#if [ ! -d $HOME"/.dwm" ]
#then
#mkdir -p $HOME"/.dwm"
#fi

#[ -d $HOME"/.dwm" ] || mkdir -p $HOME"/.dwm"

#mkdir -p $HOME"/dwm-6.2"
#mkdir -p $HOME"/dwm-bar"
#mkdir -p $HOME"/.dwm"
if [ ! -d $HOME"/.config/termite" ]
then
mkdir -p $HOME"/.config/termite"
fi

if [ ! -d $HOME"/.config/rofi" ] 
then
mkdir -p $HOME"/.config/rofi"
fi

if [ ! -d $HOME"/.config/jgmenu" ]
then
mkdir -p $HOME"/.config/jgmenu"
fi


#[ -d $HOME"/.config/termite" ] || mkdir -p $HOME"/.config/termite"
#[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
#[ -d $HOME"/.config/jgmenu" ] || mkdir -p $HOME"/.config/jgmenu"

cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

cd polybar
cp -r * ~/.config/polybar
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

#cd dwm
#cp -r * ~/.dwm
#cd ..

cd termite
cp -r * ~/.config/termite
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

mv ~/.bashrc ~/.bashrc-$(date +%Y.%m.%d-%H.%M.%S)
cp bashrc ~/.bashrc

#cp xprofile ~/.xprofile
#cp getSession.sh ~/getSession.sh - now inside dwm-6.2/system

#sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop

##git clone  https://github.com/salman-abedin/devour.git
##cd devour
##sudo make install
##echo "All done"
##cd ..
#echo "Go to dwm6-2 and do sudo make install"


#cp -arf bspwm ~/.config/bspwm
#cp -arf sxhkd ~/.config/sxhkd
#cp -arf polybar ~/.config/polybar

#cd test2
#cd bspwm
#cp -r * ~/mythetest
#cd ..
#cd ..
#pwd
