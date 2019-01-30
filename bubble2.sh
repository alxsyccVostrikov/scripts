#Bubble sort written by alexsy mostovik
arq=scp.sh
ar=(gitlab)
dir=(scripts `#script` $(#python) lai py)
dir2=($(echo ${dir[*]}| tr " " "\n" | sort -n))
echo vou arrumar:${ar[@]}
for((i=0;i<${#ar[@]}-1;i++));do
	for((j=0;j<${#ar[@]}-$i-1;j++));do
		if [[ ${ar[$j]} > ${ar[$j+1]} ]];then
		tempMAIOR=${ar[$j]}
		ar[$j]=${ar[$j+1]}
		ar[$j+1]=$tempMAIOR
	 echo arrumando....${ar[@]}
fi 
	done
	done
	: '
for((i=0;i<${#dir[@]}-1;i++));do
	for((j=0;j<${#dir[@]}-$i-1;j++));do
		if [[ ${dir[$j]} > ${dir[$j+1]} ]];then
		tempMAIOR=${dir[$j]}
		dir[$j]=${dir[$j+1]}
		dir[$j+1]=$tempMAIOR
	 echo arrumando....${dir[@]}
fi 
	done
	done
	'
dirATUAL=$(pwd)
	for i in ${ar[@]};do
	for j in ${dir2[@]};do
echo -e "\n\nim in $i\\$j"
cd /c/$i/$j/ ; sh ../$arq $*
done
done
cd "$dirATUAL"
