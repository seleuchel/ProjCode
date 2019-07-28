#!/bin/sh
#chmod 755

echo "[debian dpkg solution] start!";
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*


sudo dpkg --configure -a
echo "[debian dpkg solution] end!";
