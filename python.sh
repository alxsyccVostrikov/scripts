url=https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tar.xz
filename=$(cat | rev | cut -d / -f1 $url | rev)




sudo wget -c $url
sudo tar -xvf $filename
sudo cd $filename/
sudo ./configure
sudo make 
sudo make test
sudo make install