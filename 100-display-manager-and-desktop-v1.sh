#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
sudo pacman -Syyu --noconfirm

#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed xorg-server xorg-xinit
echo "exec startkde" > ~/.xinitrc

#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed sddm
sudo systemctl enable sddm.service -f

#installing desktop environment
sudo pacman -S plasma --noconfirm --needed
sudo pacman -S --noconfirm --needed dolphin konsole

#sudo systemctl set-default graphical.target
