mysqlscp(){
apt-get update -y
apt-get install mysql-server mysql-client -y
service mysql start	
mysql_secure_installation
}

install(){
if [[ $# -eq 2 ]]; then
if [[ $1 == "mysql" && $2 == "workbench" ]] || [[ $1 == "workbench" && $2 == "mysql" ]]; then
apt-get update -y
	mysqlscp
apt-get install mysql-workbench -y
else
echo incorrect parameter
fi
elif [ $# -eq 1 ] && [ $1 == "mysql" ]; then
apt-get update -y
	mysqlscp
elif [ $# -eq 1 ] && [ $1 == "workbench" ]; then
exist=`command -v mysql`
#1 doesnt exist
if [ $? -ne 0 ];then
apt-get update -y
	mysqlscp
apt-get install mysql-workbench -y
else
	apt-get update -y
	apt-get install mysql-workbench -y
fi
elif [ $# -eq 0 ]; then
echo no parameter
else
echo incorrect parameter
fi
}
$*





: '
#mysql --default-character-set=utf8 -u root -p


#ALTER DATABASE bingojob CHARACTER SET utf8 COLLATE utf8_general_ci;


# UTF8 character-set
init_connect = 'SET collation_connection = utf8_unicode_ci'
init_connect = 'SET NAMES utf8'
character-set-server = utf8
collation-server = utf8_unicode_ci
skip-character-set-client-handshake

'