#!/bin/bash

echo "Updating system"
sudo pacman -Syu --noconfirm

echo "Installing packages"
sudo pacman -S --noconfirm \
	i3-wm \
	picom \
	polybar \
	network-manager-applet \
	pulseaudio \
	rofi \
	firefox \
	nemo \
	feh \
	arc-gtk-theme \
	arc-icon-theme \
	kitty \
	lxappearance-gtk3 \
	neofetch \
	unzip \
	xorg-server \
	xorg-xinit \
	stow \


echo "Setting dotfiles"
cd "$HOME"
git clone "https://github.com/radu-dumitru/dotfiles.git"
cd dotfiles
stow --adopt .
git reset --hard
