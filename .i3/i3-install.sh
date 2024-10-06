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
	shutter

cp .xinitrc ~/
cp config ~/.config/i3/
cp kitty.conf ~/.config/kitty/

mkdir -p ~/Pictures/wallpapers
cp wallpapers/mountains.jpg ~/Pictures/wallpapers/
