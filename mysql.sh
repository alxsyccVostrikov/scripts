		mysqlscp(){
			sudo apt-get update -y
			sudo apt-get install mysql-server mysql-client -y
			sudo service mysql start	
			sudo mysql_secure_installation
		}

				sudo apt-get update -y
				sudo mysqlscp
				sudo apt-get install mysql-workbench -y
		