	password=""
	character=""
	prompt="Password: "
	echo -n "${prompt}" >&2
	while true; do
		read -N 1 -s character
		[ "${character}" == "" ]&& break
		if [ ${character} == $'\177' ];then
			if [ "$password" != "" ]; then
				password=${password%?}
				printf '\b \b'
			fi
		else
		echo -n "*" >&2
		password="${password}${character}"
		fi
	done
	echo >&2
	getPass(){
		echo $password
	}
	$*