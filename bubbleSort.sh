#Bubble sort written by alexsy mostovik
arq=scp.sh
ar=(gitlab bitbucket)
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
	for i in ${ar[@]};do
cd /c/$i/lai/
sh $arq $*
done
