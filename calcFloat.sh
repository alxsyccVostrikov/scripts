<<disclaimer
	implements something like 'while x<3.length' 
disclaimer
	read -p "calculando floatPoint " x
	read -p "calculando y " y
	x1=`echo $x | cut -f1 -d.`
	x2=`echo $x | cut -f2 -d.`
	y1=`echo $y | cut -f1 -d.`
	y2=`echo $y | cut -f2 -d.`
	z2=$((x2+y2))
	if [[ $z2 == 10 ]];then
		z2=0
		z1=1
		z1=$((z1+x1+y1))
	elif [[ $z2 > 10 ]]; then
		z2=$((z2-10))
		z1=1
		z1=$((z1+x1+y1))
	fi
	
	
	echo $z1.$z2

for i in ${z1};do
		echo ${i}
	done
