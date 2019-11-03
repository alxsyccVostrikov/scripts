sudo apt-get update -y

sudo apt-get install xinit -y
sudo apt-get install lxde-core -y
sudo apt-get install lxdm -y

sudo reboot

apt-get install lxsession-logout -y
#sudo apt-get install lxterminal
sudo apt-get install leafpad -y
#sudo leafpad /etc/lxdm/default.conf

sudo reboot

#sudo apt-get install build-essential linux-headers-`uname -r` dkms
#now mount CD VBoxGuestAdditions and open it in terminal like in video and run:
#sudo ./VBoxLinuxAdditions.run