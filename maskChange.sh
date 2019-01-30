#written alxsy mostovik
setUser() {
read -p "signin git servie name(github.com,gitlab.com,repository.net): " srvc
printf "Entre com o email da sua conta $srvc: " 
email=
local char
while  conf= read -r -s -n1 char; do
	if [[ $char = "" ]] ; then
		printf "\n"
		break
	elif [[ $char = $'\177' ]] ; then
		if [[ $email != "" ]] ; then
			#pass=${pass%?}
			printf '\b \b'
		fi
	else
		email+=$char                 
		printf "$char"
	fi
done
}




setPass() {              
printf "Entre com a senha da sua conta GITHUB: " 
pass=
local char
while IFS= read -r -s -n1 char; do
	if [[ $char = "" ]] ; then
		# enter, end
		printf "\n"
		break
	elif [[ $char = $'\177' ]] ; then
		# backspace, remove one char
		if [[ $pass != "" ]] ; then
			pass=${pass%?}
			printf '\b \b'
		fi
	else
		# any other char
		pass+=$char                 
		printf "*"
	fi
done
}


#setPass "Enter Password: "
#printf "Password entered was: %s\n" "$pass"
i=1
setGit(){
clear
printf "Configuring account $i\n"
setUser
setPass
read -p "the information above are right?(y or n) " resp 
if [[ $resp == "y" && $i -eq 1 ]];then
echo -e "machine $srvc
username $email
password $pass\n\n" > ~/.netrc
i=$(($i+1))
#echo valor de i:$i
elif [[ $resp == "y" && i>1 ]];then
echo -e "machine $srvc
username $email
password $pass\n\n" >> ~/.netrc
i=$(($i+1))
#echo valor de i:$i
else
setGit
fi
read -p "conigure more account?(y or n) " cont
if [ $cont == "y" ];then
clear
setGit
fi
}

get(){
echo $pass
}


$*
