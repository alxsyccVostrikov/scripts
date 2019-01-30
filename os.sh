nome(){
os=`cat /etc/issue | cut -d " " -f1 | tr [:upper:] [:lower:]`
echo $os
}
vrsn(){
version=`lsb_release -c | cut -d: -f2`
echo $version
}
$1
