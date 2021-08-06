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

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd openbox
chmod +x autostart
cd ..

cd tint2
chmod +x tint2rc
chmod +x tint2-sessionfile
cd ..

#######################################################

if [ ! -d $HOME"/.config" ] 
then mkdir -p $HOME"/.config"
fi

cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

if [ ! -d $HOME"/.config/polybar" ] 
then
mkdir -p $HOME"/.config/polybar"
fi

mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p $HOME"/.config/lxterminal"

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

if [ ! -d $HOME"/.config/openbox" ]
then
mkdir -p $HOME"/.config/openbox"
fi

if [ ! -d $HOME"/.config/obmenu-generator" ]
then
mkdir -p $HOME"/.config/obmenu-generator"
fi

if [ ! -d $HOME"/.config/tint2" ]
then
mkdir -p $HOME"/.config/tint2"
fi

#[ -d $HOME"/.config/termite" ] || mkdir -p $HOME"/.config/termite"
#[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
#[ -d $HOME"/.config/jgmenu" ] || mkdir -p $HOME"/.config/jgmenu"
cd lxterminal
cp -r * ~/.config/lxterminal
cd ..


cd polybar
cp -r * ~/.config/polybar
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
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

cd openbox
cp -r * ~/.config/openbox
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

mv ~/.bashrc ~/.bashrc-$(date +%Y.%m.%d-%H.%M.%S)
cp bashrc ~/.bashrc

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "SNAP: For menu entry copy /var/lib/snapd/desktop/applications to /home/phil/.local/share/applications"
echo "SNAP : From sxhkd do 'snap run brave' instead of just 'brave' "
echo "Appimage: Get appimagelauncher from releases.  Do 'appimagelauncher-lite...AppImage install' in terminal."
echo "Get Beautyline icon from gnome.  Extract and copy into /usr/share/icons."
echo "Get Prismatic theme and put in .themmes folder.  Obconf"
echo "greeter-hide-users=false  in /etc/lightdm/lightdm.conf"

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
