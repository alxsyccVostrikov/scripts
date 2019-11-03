	op=$2
	
		case $op in
			7)
				sudo add-apt-repository ppa:openjdk-r/ppa  
				sudo apt-get update -y
				sudo apt-get install openjdk-7-jdk  
			;;
			8)
				sudo add-apt-repository ppa:openjdk-r/ppa -y
				sudo apt-get update -y
				sudo apt-get install openjdk-8-jdk -y
				JAVA_HOME=$jv/java-8-openjdk-`dpkg --print-architecture`
			;;
			*)
				op=7
				sudo apt-get update -y
				sudo apt-get install default-jdk -y
				JAVA_HOME=$jv/java-7-openjdk-`dpkg --print-architecture`
			;;
		esac
		jv=`whereis jvm | cut -d: -f2`
		jdk=`update-alternatives --list java | egrep java-$op | cut -d/ -f5`
		JAVA_HOME=$jv/$jdk
	}
