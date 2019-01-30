op=$2
install(){
jv=`whereis jvm | cut -d: -f2`
jdk=`update-alternatives --list java | egrep java-$op | cut -d/ -f5`
url=http://archive.ubuntu.com/ubuntu/pool/universe/m/mysql-connector-java/libmysql-java_5.1.38-1_all.deb
curl -O $url 
dpkg -i libmysql-java_5.1.38-1_all.deb
#apt-get install libmysql-java -y
cp /usr/share/java/mysql.jar $jv/$jdk/jre/lib/ext/.

}
$*