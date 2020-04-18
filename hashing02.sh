pass="alxsy"
passC=`echo -n $pass | sha1sum | awk '{print $1}'`

read p1
p1c=$(echo -n $p1 | sha1sum | awk '{print $1}')

if [ $passC = $p1c ];then
echo "senha desc:$p1";
fi
