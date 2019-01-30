op=$2
#sh dep.sh up

install(){
case $op in
7)
#sudo apt-get install oracle-java7-installer -y
#sudo apt-get install openjdk-7-jdk -y
sudo add-apt-repository ppa:openjdk-r/ppa  
sudo apt-get update -y
sudo apt-get install openjdk-7-jdk  

#JAVA_HOME=$jv/java-7-openjdk-`dpkg --print-architecture`
;;
8)
: '
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java8-installer -y
'

sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update -y
sudo apt-get install openjdk-8-jdk -y
JAVA_HOME=$jv/java-8-openjdk-`dpkg --print-architecture`

;;
*)
op=7
#defaults its jdk 7
sudo apt-get update -y
sudo apt-get install default-jdk -y
JAVA_HOME=$jv/java-7-openjdk-`dpkg --print-architecture`
#JAVA_HOME=$jv/java-7-openjdk-`dpkg --print-architecture`
;;
esac
jv=`whereis jvm | cut -d: -f2`
jdk=`update-alternatives --list java | egrep java-$op | cut -d/ -f5`
JAVA_HOME=$jv/$jdk
}


$*



#sudo update-alternatives --config javac
#sudo update-alternatives --config java