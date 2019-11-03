	read -p "calculando floatPoint " x
	read -p "calculando y " y
	x=`echo $x | tr -d "."`
	y=`echo $y | tr -d "."`
	z=$((x+y))
	echo $z
	for i in ${#z};do
		echo ${z:1} 
	done
