#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website : https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"

echo "Removing xcursor-breeze to avoid conflict with breeze"
sudo pacman -R xcursor-breeze --noconfirm

sudo pacman -Syyu
sudo pacman -S sddm sddm-kcm --noconfirm --needed
#sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
#sudo pacman -S gdm
sudo pacman -S plasma-meta --noconfirm --needed
#sudo systemctl enable gdm.service -f
#sudo systemctl enable lightdm.service -f
sudo systemctl enable sddm.service -f
sudo systemctl set-default graphical.target


echo "Remove anything you do not like from the installed applications"

#sudo pacman -R --noconfirm ...