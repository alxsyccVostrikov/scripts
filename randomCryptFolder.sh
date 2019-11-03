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