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


echo Welcome $emailContato