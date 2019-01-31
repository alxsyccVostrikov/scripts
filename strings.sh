echo abc $(: Put your comment here def) `: alxzy` `#alzy` `# alzy` xyz, etc.
nome="alex" 
email=`echo alan@mail.com | awk '{print toupper($email)}'`  
echo $nome | tr [:lower:] [:upper:]
echo ${nome^^}
echo eu sou $email de contato 
echo eu sou ${nome^^} de contato 
string=alana
string=${string^^}
echo eu seu nome $string  
vrsnBASH=`echo $BASH_VERSION | cut -d- -f1`
vrsnBASH=${vrsnBASH:4-4:3}
echo sua version is  ${vrsnBASH}  
if [ ${vrsnBASH%.*}${vrsnBASH#*.} -ge 40 ];then
echo compatiable ${vrsnBASH%.*}\.${vrsnBASH#*.}
else
echo diferent ${vrsnBASH#*.}
fi
if [ -d \/c\/gitlab2 ]; then
echo exist
fi