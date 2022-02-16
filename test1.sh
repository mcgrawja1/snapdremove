#!/bin/sh

#Remove snap because we already have apt and it messes up the drive allocations https://techwiser.com/remove-snap-ubuntu/

sudo snap list

# Clear the snap cache

sudo rm -rf /var/cache/snapd/

#Uninstall snap and the GUI

sudo apt autoremove --purge snapd gnome-software-plugin-snap -y

#Clear snap preferences

rm -fr ~/snap

#Put snap on hold
sudo apt-mark hold snapd
