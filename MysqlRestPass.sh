sudo service mysql stop
sudo mysqld_safe --skip-grant-tables &
#if [ $? -eq 1 ]; then
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
#fi
mysql -u root
use mysql;
update user set authentication_string=PASSWORD("SuaSenha") where User='root';
update user set plugin="mysql_native_password";
flush privileges;
quit


#udo mysqladmin shutdown # essa foi a forma mais fácil que eu achei para matar o mysqld_safe
#mysqladmin -u root -p password newpass