#!/bin/bash -e

echo "#### Adding PPAs"
##while read ppa; do
##sudo add-apt-repository $ppa
##done < ppas.txt

echo "#### Installing packages"
#sudo apt-get update
#declare -a packages
#readarray packages < packages.txt
#sudo apt-get install ${packages[*]}
#echo ${packages[*]}

while read package; do
	case $package in
	*#* ) echo $package ;;
	* ) echo "opa " $package ;;
	esac
	#sudo apt-get install $package -y
done < packages.txt



echo "#### Configure grub to use console mode"
#sudo patch -p0 < grub-config.patch
#sudo update-grub

echo "#### Configure default Java"
#sudo update-java-alternatives -s java-8-oracle

echo "#### Now, you should run these parts manually:"
#cat manual.txt