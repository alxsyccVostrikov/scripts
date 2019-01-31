arq=`dpkg --print-architecture`
if [ $arq == i386 ]; then
curl -O http://archive.ubuntu.com/ubuntu/pool/universe/j/jp2a/jp2a_1.0.6-4_i386.deb


else
curl -O http://archive.ubuntu.com/ubuntu/pool/universe/j/jp2a/jp2a_1.0.6-4_amd64.deb
fi
