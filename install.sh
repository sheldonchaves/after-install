#!/bin/bash -e

echo "▶ Adding PPAs ◀"
while read ppa; do
	sudo add-apt-repository $ppa
done < ppas.txt

echo "▶ Installing packages ◀"
while read package; do
	case $package in
	*#* ) echo $package ;;
	* ) sudo apt-get install $package -y;;
	esac
done < packages.txt

echo "▶ Commands ◀"
while read cmd; do
	sudo $cmd
done < commands.txt

echo "▶ Configure grub to use console mode ◀"
#sudo patch -p0 < grub-config.patch
#sudo update-grub

echo "▶ Parts manually ◀"
#cat manual.txt
