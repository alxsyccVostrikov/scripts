install(){
yum install httpd php php-pdo -y
sed -i s/"\/var\/www\/html"/"\/home\/cabox\/workspace\/"/g /etc/httpd/conf/httpd.conf
service httpd restart
}
$*