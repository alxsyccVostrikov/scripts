


vrsnBASH=`echo $BASH_VERSION | cut -d- -f1`
vrsnBASH=${vrsnBASH:4-4:3}
emailContato=pos1620@sapo.pt
if [ ${vrsnBASH%.*}${vrsnBASH#*.} -ge 40 ];then
emailContato=${emailContato^^}
echo $emailContato
else
emailContato=`echo $emailContato | tr [:lower:] [:upper:]`
echo $emailContato
fi

contac(){
clear;
echo "options doesnt avaliable,send us a email to '$emailContato' and help us to implements new functions...,thank you for the your feedback!
"
}

echo Welcome $emailContato
contac