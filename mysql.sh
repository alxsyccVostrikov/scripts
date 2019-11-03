		mysqlscp(){
			apt-get update -y
			apt-get install mysql-server mysql-client -y
			service mysql start	
			mysql_secure_installation
		}

				apt-get update -y
				mysqlscp
				apt-get install mysql-workbench -y
		