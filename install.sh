#!/bin/bash
distro=$1
app=$2
var=$(tr '[:upper:]' '[:lower:]' <<< "$1")
if [ -z $distro ]; then
	echo "Please put your distro and your app"
exit
elif [ -z $app ]; then
	echo "Please put your distro and your app"
exit
fi
sudo apt update && sudo apt -y full-upgrade
case $var in
	"debian"|"ubuntu"|"linuxmint"|"kalilinux")
	sudo apt install $app;;
	"archlinux"|"chakra"|"manjaro")
	sudo pacman -S $app;;
	*) echo "We are sorry $distro not supported..";;
esac
