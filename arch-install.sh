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
	xorg-xrandr\
 	libxft\
 	libxinerama\
 	noto-fonts\
   	noto-fonts-extra\
	zsh\
	tmux\
	kitty\
	fzf\
 	ripgrep\
	fd\
	doxygen\
 	strace\
	ccache\
	valgrind\
	vulkan-nouveau\
	vulkan-tools\
	vulkan-devel\
	cmake\
	make\
	ninja\
	gcc\
	aarch64-linux-gnu-gcc\
	aarch64-linux-gnu-glibc\
 	llvm\
	clang\
	libc++\
	git\
	man\
	man-pages\
	tree\
	python3\
	pre-commit\
	shfmt\
	alsa-utils\
	xclip\
	gdb\
 	openssh\
	docker

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .vimrc ~/
cp .tmux.conf ~/
cp .zshrc ~/
cp .bashrc ~/

echo "shell /usr/bin/zsh" >> ~/.config/kitty/kitty.conf
