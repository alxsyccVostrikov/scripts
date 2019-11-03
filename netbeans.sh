	: '
		link netbeans ide script
		https://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-javase-linux.sh
		https://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-javase-linux.sh
		https://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javase-linux.sh
	'
	
	
	<<First way to install netbeans
		sudo add-apt-repository ppa:vajdics/netbeans-installer -y
		sudo apt-get update -y
		sudo apt install netbeans-installer -y
	Netbeans
	
	
	
	<<anotherWayToDoScript
	if [ $version = "8" ]; then
		version="8.0"
		wget --no-check-certificate -c  https://download.netbeans.org/netbeans/$version/final/bundles/netbeans-$version\-$JavaCodeName\-linux.sh
	else
		wget --no-check-certificate -c  https://download.netbeans.org/netbeans/$version/final/bundles/netbeans-$version\-$JavaCodeName\-linux.sh
	fi
	anotherWayToDoScript





	version="8.0"
	JavaCodeName=javase
	
	case $version in
		"7.4")
			wget --no-check-certificate -c https://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-javase-linux.sh
		;;
		"8"|"8.0")
			wget --no-check-certificate -c https://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-javase-linux.sh
		;;
		"8.2")
			wget --no-check-certificate -c https://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-javase-linux.sh
		;;
	esac