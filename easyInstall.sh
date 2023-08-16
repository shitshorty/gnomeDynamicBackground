#!/bin/bash
cd ~
echo "Downloading process"
git clone git@github.com:shitshorty/gnomeDynamicBackground.git  
cd gnomeDynamicBackground
echo "beginning installing process"

if [[ -d /usr/share/backgrounds/dynamic_background ]]
then 
	sudo rm -r /usr/share/backgrounds/dynamic_background
	echo "remove if directory exist"
fi

echo "Installing dynamic backgrounds..."
sudo cp -r ./dynamic_background/ /usr/share/backgrounds/
sudo cp ./xml/* /usr/share/gnome-background-properties/
echo "dynamic backgrounds has been installed!"
cd ~ 
echo "remove downloaded files used only for the installation process"
sudo rm -r gnomeDynamicBackground
echo "    |"
echo "    '---> Deleted downloaded files!"
echo "Done!!"

gsettings range org.gnome.desktop.background picture-options 'stretched'