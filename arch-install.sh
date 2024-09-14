#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm\
	base\
	base-devel\
	networkmanager\
	curl\
	libx11\
	xorg-server\
	xorg-server-devel\
 	xorg-xinit\
	xcb-util\
 	libxft\
 	libxinerama\
 	noto-fonts\
   	noto-fonts-extra\
	zsh\
	tmux\
	kitty\
	fzf\
	fd\
	doxygen\
	ccache\
	valgrind\
	vulkan-nouveau\
	vulkan-tools\
	cmake\
	make\
	ninja\
	gcc\
	aarch64-linux-gnu-gcc\
	aarch64-linux-gnu-glibc\
	clang\
	git\
	man\
	man-pages\
	tree\
	python3\
	pre-commit\
	shfmt\
	alsa-utils\
	xclip\
	docker

cp .vimrc ~/
cp .tmux.conf ~/
cp .zshrc ~/
cp .bashrc ~/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

