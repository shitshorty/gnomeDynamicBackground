#!/bin/bash
if [[ -d /usr/share/backgrounds/dynamic_background ]]
then 
	sudo rm -r /usr/share/backgrounds/dynamic_background
	echo "remove if directory exist"
fi

echo "Installing dynamic backgrounds..."
sudo mkdir -p /usr/share/backgrounds/
sudo mkdir -p /usr/share/gnome-background-properties/ 
sudo cp -r $(pwd)/dynamic_background /usr/share/backgrounds/dynamic_background
sudo cp $(pwd)/xml/* /usr/share/gnome-background-properties/
echo "Dynamic backgrounds has been installed."
