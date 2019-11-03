sudo apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" -y
sudo apt-get update && sudo apt-get install skype -y



: '
sudo add-apt-repository ppa:videolan/stable-daily -y
sudo apt-get update -y
sudo apt-get install vlc -y
'