
#full netbeans,all languages alxsy mostovik
Ntbns_Version=8.0
os=$(cat /etc/issue | cut -d " " -f 1)
PackType_Source_url=https://download.netbeans.org/netbeans/${Ntbns_Version}/final/bundles/netbeans-${Ntbns_Version}-javase-linux.sh
PackType_Source_filename=$(basename $PackType_Source_url)
PackType_Message="dont implements stil,contac us for email $(bash info.sh getEmail)"


if [[ ${os,,}== "ubuntu" ]];then
	wget --no-check-certificate -c $PackType_Source_url || curl -O $PackType_Source_url
	bash $PackType_Source_filename
else
	echo $PackType_Message
fi
	




































<<OldInstalationMode
	install(){
	#if [ $# -eq 0 ] || [ $# -eq 1 ]; then
	if [ $# -eq 0 ]; then
	curl -O https://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-javase-linux.sh
	elif [ $# -eq 1 ];then
	curl -O https://download.netbeans.org/netbeans/$version/final/bundles/netbeans-${version}-javase-linux.sh
	else
	curl -O https://download.netbeans.org/netbeans/$version/final/bundles/netbeans-$version-$java-linux.sh
	fi
	}
	$*
OldInstalationMode






: ' zip install alxsy mostovik method 2 direct
	wget -c  https://download.netbeans.org/netbeans/$version/final/zip/netbeans-$version-201609300101-$java.zip -O netbeans_$1.zip
	
	sudo unzip netbeans.zip -d /opt/
	sudo mv /opt/netbeans*/ /opt/netbeans/
	sudo ln -sf /opt/netbeans/bin/netbeans /usr/bin/netbeans
	echo -e "[Desktop Entry]\n Version=1.0\n Name=netbeans\n Exec=/opt/netbeans/bin/netbeans\n Icon=/opt/netbeans/nb/netbeans.png\n Type=Application\n Categories=Application" | sudo tee /usr/share/applications/netbeans.desktop
'






: 'zip install alxsy mostovik method 3 using ln
	wget -c  http://download.netbeans.org/netbeans/8.2/final/zip/netbeans-8.2-201609300101-$1.zip -O netbeans_$1.zip
	wget http://download.netbeans.org/netbeans/8.2/final/zip/netbeans-8.2-201609300101.zip -O netbeans.zip
	sudo unzip netbeans.zip -d /opt/
	sudo mv /opt/netbeans*/ /opt/netbeans/
	sudo ln -sf /opt/netbeans/bin/netbeans /usr/bin/netbeans
	echo -e "[Desktop Entry]\n Version=1.0\n Name=netbeans\n Exec=/opt/netbeans/bin/netbeans\n Icon=/opt/netbeans/nb/netbeans.png\n Type=Application\n Categories=Application" | sudo tee /usr/share/applications/netbeans.desktop

'







<<LinksDoJdk
	zip
	https://download.netbeans.org/netbeans/8.2/final/zip/netbeans-8.2-201609300101-javaee.zip
	https://download.netbeans.org/netbeans/8.2/final/zip/netbeans-8.2-201609300101-javase.zip
	
	script
	http://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-linux.sh
	http://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-linux.sh
	http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh
	https://download.netbeans.org/netbeans/7.4/final/bundles/netbeans-7.4-javase-linux.sh
	https://download.netbeans.org/netbeans/8.0/final/bundles/netbeans-8.0-javaee-linux.sh
	https://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javaee-linux.sh
LinksDoJdk














