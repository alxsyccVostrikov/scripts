	#generating crypt folder...${1:-100} 
	genFolderCrypt(){
	
		i=0
		#read -p "How many are random folder?" key
		length=9
		while [ $i -lt ${1:-100} ];do
			pass=$(tr -cd [:print:] < /dev/urandom | head -c$length)
			cryptFolderName=`echo -n $pass | md5sum | awk '{print $1}'`;
			cryptFolderName2=`echo -n $pass | md5sum | awk '{print $1}'`;
			mkdir $cryptFolderName.$cryptFolderName2
			let i=i+1;
		done;
	}




	#start script

	folders=(`ls -d */`)
	param_crypt=`echo -n $1 | md5sum | awk '{print $1}'`

	#criptografanfo
	if [ -d $1 ];then
		read -p "Senha p criptografar"$'\n' pass
		dataBaseCrypt=`echo -n $pass | md5sum | awk '{print $1}'`
		mv $1 $dataBaseCrypt.$param_crypt
		genFolderCrypt


	#descriptografando
	else
		read -p "descriptografar banco $1"$'\n' pass
		dataBaseCrypt=`echo -n $pass | md5sum | awk '{print $1}'`
		for i in ${folders[@]};do
			if [[ ${#i} -gt 50 && $i == $dataBaseCrypt.$param_crypt/ ]];then
				fileNoMd5Param=`echo $i | cut -f1 -d '.'`
				mv $i $fileNoMd5Param
				#echo "i:"$i
				if [[ $fileNoMd5Param == $dataBaseCrypt ]];then
					#echo igualzin;
					#echo $i
				mv $fileNoMd5Param $1
				fi
			fi
		done
	fi




