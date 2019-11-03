https://updates.tdesktop.com/tlinux/tsetup.1.8.15.tar.xz
#https://telegram.org/dl/desktop/linux

: '
snap
snap://telegram-desktop
org
sudo snap install telegram-desktop
sudo snap install telegram-sergiusens


remove 
sudo snap remove telegram-sergiusens
'

: '
ppa
sudo add-apt-repository ppa:atareao/telegram
sudo apt update && sudo apt install telegram
'


: '
latpak
https://flathub.org/apps/details/org.telegram.desktop
'