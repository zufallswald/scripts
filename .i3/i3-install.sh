#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm\
	libx11\
	xorg\
	xorg-server\
	xorg-server-devel\
 	xorg-xinit\
	xcb-util\
	xorg-xrandr\
	i3-wm\
	i3status\
	i3blocks\
	dmenu\
	picom\
	blueman\
	networkmanager\
	network-manager-applet\
	nm-connection-editor\
	shutter

cp .xinitrc ~/
cp kitty.conf ~/.config/kitty/
cp -r i3 ~/.config/i3/
cp -r i3status ~/.config/

mkdir -p ~/Pictures/wallpapers
cp wallpapers/mountains.jpg ~/Pictures/wallpapers/
