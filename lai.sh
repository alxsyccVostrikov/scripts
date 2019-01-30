

ava(){
echo "                                                            
xNNWWWNNNNXXXXXXXK000K0Okxdc,..   ':.....,,,.:xxxxxxxxxxxc 
oNNWMWWWNNNNNNNNNNXXXXKK00Oxdc,..  .......'..dkkkkkkkkkkkc 
:NNNWWWWWNNNNNNNNNNXXXXK00OOkxo;...    .lOo 'dkkkkkkkkkkkc 
,XNNWMMMWNNXKOdc;;::cokKKK00Okxdl,..  .'.cNc,dkkkkkkkkkkkc 
':coONWMX:,',cdxkO0KKKK00KKK0OOxd:,.      ';okkkkkkkkkkkkc 
,lo,.,ONNK00Kk;lc.. .;OXKKKKK0Oxddc.  '.  ;okkkkkkkkkkkkkc 
,:'lO:.;NNXXK0dkkc;;dXNNNXKKKK0Okdc...,xxxkkkkkkkkkkkkkkkc 
,:::kkO0NWWXKKXNNNNNNNWWWWXKKKKkxoc:x; ..'ckkkkkkkkkkkkkkc 
,:::KNXNWWWWNXNNNNNWWWMMWWNXXXK0kocdk.  .:cxkkkkkkkkkkkkkc	LAI'Project 
,:::oNNNWWWWNWWWWNNWWWWWWNNNNXXKklox,   ',;okkkkkkkkkkkkkc Linux
,::::oNNNWWNNWNWMWWMMMWNXXNNNXXK0xc;.   ',,cxkkkkkkkkkkkkc Artificial
,:::::dXXNNO000NMMMMMWNXXXXXXXXK0x:' .d .cc;lxkkkkkkkkkkkc Intelligence
,::::::xNXKNNNNNNNWWWWXXXNXXXXXKOc'..xl.';:ocoxkkkkkkkkkkc 
,:::::::ON00KXXNWNWWWWNNNXXXXXKOl;xoOl.'..locclxkkkkkkkkkc 
,:::::::cdxxocccld0WMMMWWNXXX0xclK0ol;'.. ;;cccldkkkkkkkkc 
,:::::::::lkKOOOKNWWWMMWWNXKkdoxxc';,.''' .l,c:cooxkkkkkkc 
,:::::::::::dNNNNNNNNNNXX0xdkOOkl. 'xll:'  ;;:c,;c,clxkkkc 
,::::::::::::l0NNNNNNKkxXWX0OOO:,.  . .  .;cc;..,:''''xkkc 
,::::::::::::::cooooc:::lNMWWX:';:'.. .....'..  ......;xkc 
,::::::::::::::::::::::::lXW0;';,'.'';:,,;.,'.'.  .',..:xc 
,::::::::::::::::::::::::::','',c,',.,,.'......'..  .''.:: 
';;;;;;;;;;;;;;;;;;;;;;;;;;',;;:,.,..,............'  ., .. 
"
}


sms(){
echo "Deixe me ajudar,analisar e configurar seu sistema!
	Desenvolvido por Alexsey mostovik\n"
}

comun(){
bash sw/samba.sh	install
bash sw/notepadqq.sh	install
bash dep.sh	conf_app
bash dep.sh	add_repos
bash dep.sh	up
bash browser/browser.sh	installbrowser chromium
bash server/python.sh install
#. ./wine
#. ide/sublime.sh

}
vrsn=8
java(){
bash ide/jdk.sh		install	$vrsn	
bash ide/netbeans.sh	install 8.2 javase
bash ide/mysql.sh	install	mysql workbench
bash server/jdbc.sh	install	$vrsn
#./ide/eclipse.sh	jse
}

csharp(){
#. ide/csharp.sh	#dont exist anymore
bash ide/monoDevelop.sh	ideMonoDevelop
#. ide/MonoCSharp.sh	install
#. ide/dotnet.sh	#dont exist anymore
#sh xsp.sh	install
}

desinstalar(){
sudo apt-get remove --purge libreoffice* -y 
sudo apt-get clean sudo -y
apt-get autoremove -y
}



#`cat /etc/bash.bashrc`" > /etc/bash.bashrc
#. /etc/bash.bashrc


despedida(){
echo "agradeço poder ajudar!,simplificar teu tabralho!
        agora já pode usar as ferramentas de desenvolvimento.


"
}




menu(){
echo "
	1-Desenvolvimento	4-Design
	2-Jogos			5-
	3-Cad(engenharia)\n"	6-
read -p "vamos começar? `echo '\n> '`" resp
case $resp in
1)
comun;
java;
clear;
ava;
despedida;
;;
*)
despedida;
;;
esac
}






: '
clear
desinstalar
sh util/gnomeAccount.sh
'





clear;
ava;
sms;
read -p "Press any key to continue" resp
if [ "$resp" = "" ]; then
clear;
ava;
menu;
fi
