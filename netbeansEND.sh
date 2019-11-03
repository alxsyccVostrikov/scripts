	url=https://download.oracle.com/otn/java/jdk/8u221-b11/230deb18db3e4014bb8e3e8324f81b43/jdk-8u221-linux-x64.tar.gz
	url=https://download.oracle.com/otn/java/jdk/9+181/jdk-9_linux-x64_bin.tar.gz
	filename=$(basename $url)
	urlSigned=https://download.oracle.com/otn/java/jdk/8u221-b11/230deb18db3e4014bb8e3e8324f81b43/$filename?AuthParam=1563971725_1324d8573552d9d28fe0b58f8e91e2c6
	#urlSigned=https://download.oracle.com/otn/java/jdk/9+181/jdk-9_linux-x64_bin.tar.gz?AuthParam=1563978246_9c9ef7870d0bb79961de87f52fe9b6d4
	
	
	
	
	wget -c $urlSigned
	sudo mkdir /usr/lib/jvm
	sudo tar -xvzf ~/Downloads/$filename	/usr/lib/jvm
	
	
	echo"PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/$filename/bin:/usr/lib/jvm/$filename/db/bin:/usr/lib/jvm/$filename/jre/bin'
	J2SDKDIR='/usr/lib/jvm/$filename'
	J2REDIR='/usr/lib/jvm/$filename/jre'
	JAVA_HOME='/usr/lib/jvm/$filename'
	DERBY_HOME='/usr/lib/jvm/$filename/db'
	> /etc/environment
	
	sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/$filename/bin/java" 0
	sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/$filename/bin/javac" 0
	sudo update-alternatives --set java /usr/lib/jvm/$filename/bin/java
	sudo update-alternatives --set javac /usr/lib/jvm/$filename/bin/javac