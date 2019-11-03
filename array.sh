	arr=(a s c r f)
	arr2=($(echo ${arr[*]}| tr "" "," | sort -n))
	echo ${arr2[@]}
