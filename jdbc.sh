op=$2
install(){
url=http://security.ubuntu.com/ubuntu/pool/universe/m/mysql-connector-java/libmysql-java_5.1.45-1_all.deb
curl -O $url 
dpkg -i `basename $url`
echo "
valor de retorno $?
"
#if [ $? -neq 0 ]; then
apt-get install libmysql-java -y
#fi
jv=`whereis jvm | cut -d: -f2`
jdk=`update-alternatives --list java | egrep java-$op | cut -d/ -f5`
cp /usr/share/java/mysql.jar $jv/$jdk/jre/lib/ext/.

}
$*