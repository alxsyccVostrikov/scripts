	: 'read -p "email: " email
	read -p "password: " pass
	echo "
	machine github.com
	username $email
	password $pass
	" > ~/.netrc
	'
	bash maskChange.sh setGit
	gpg -c ~/.netrc
	ulr=https://raw.githubusercontent.com/git/git/master/contrib/credential/netrc/git-credential-netrc
	curl -O $url
	
	chmod -x git-credential-netrc
		if[ $OSTYPE = "linux-gnu" ];then
		#linux
		cp git-credential-netrc /bin
	else
		#windows
		cp git-credential-netrc /usr/bin
	fi
	git config --global credential.helper "netrc -f ~/.netrc.gpg -v"
	
	
	
	: '
	move files git-credential-netrc to c:\programfiles\git\usr\bin\
	git config --global credential.helper "netrc -f ~/.netrc.gpg -v"
	5cwr3
	'
