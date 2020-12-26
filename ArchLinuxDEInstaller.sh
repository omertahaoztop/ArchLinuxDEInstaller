#!/bin/bash
echo "Welcome To ArchLinuxDEInstaller"
echo "Enter the de you want to install:"
echo "For gnome write:gnome, For budgie write:budgie-desktop,For cinnamon write:cinnamon,For deepin write:deepin, For plasma write:plasma"
read name
echo "Installing"
sudo pacman -S $name
echo "Installation Complete If you want a update write:y or n"
read decision
if ((decision=="y"))
then
sudo pacman -Syyuu
else
  exit 1
fi
