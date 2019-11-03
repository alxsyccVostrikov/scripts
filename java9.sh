	sudo add-apt-repository ppa:webupd8team/java -y
	sudo apt-get update -y
	sudo apt-get install oracle-java9-installer -y
	
	
	
	
	#https://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-linux.sh
	<<AnotherWayToInstall
		sudo apt-get install openjdk-9-jdk
		sudo apt-get -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk
		sudo apt install openjdk-9-jdk
		sudo dpkg --configure -a
		sudo dpkg -i --force-overwrite '/var/cache/apt/archives/openjdk-9-jdk_9~b114-0ubuntu1_i386.deb'
	AnotherWayToInstall