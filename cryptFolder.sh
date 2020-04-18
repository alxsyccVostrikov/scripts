	folders=(`ls -d */`)
	param_crypt=`echo -n $1 | md5sum | awk '{print $1}'`
	if [ -d $1 ];then
		read -p "Senha p criptografar"$'\n' pass
		dataBaseCrypt=`echo -n $pass | md5sum | awk '{print $1}'`
		mv $1 $dataBaseCrypt.$param_crypt
		bash randomCryptFolder.sh
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