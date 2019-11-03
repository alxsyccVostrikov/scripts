: '
sudo gedit /etc/apt/sources.list
deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
'
SourcePath=/etc/apt/sources.list
echo "" >> $SourcePath
echo "" >> $SourcePath
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> $SourcePath
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y 
