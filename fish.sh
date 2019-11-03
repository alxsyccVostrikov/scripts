if [ `cat /etc/issue | cut -d " " -f1 | tr [:upper:] [:lower:]` == ubuntu ]; then
sudo apt-add-repository ppa:fish-shell/release-2 -y
sudo apt-get update -y
sudo apt-get install fish -y 


: '
url=http://archive.ubuntu.com/ubuntu/pool/universe/f/fish/fish_2.0.0-1_`dpkg --print-architecture`.deb
curl -O $url
dpkg -i `basename $url`
'




else
cd /etc/yum.repos.d/
sudo wget https://download.opensuse.org/repositories/shells:fish:release:2/RHEL_7/shells:fish:release:2.repo
sudo yum install fish -y

fi






#http://archive.ubuntu.com/ubuntu/pool/universe/f/fish/fish_2.0.0-1_i386.deb



#http://archive.ubuntu.com/ubuntu/pool/universe/f/fish/fish_2.0.0-1_amd64.deb

#lsb_release -a,uname -s