install(){
sudo add-apt-repository ppa:embrosyn/cinnamon -y
sudo apt update -y
sudo apt install cinnamon
#/usr/bin/gnome-session-save --kill --silent 
#sudo pkill -9 -u username
logout username


sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update -y
sudo apt-get install windos-10-themes -y
}
$*