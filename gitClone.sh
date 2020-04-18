srv=$1
usr=$2
repo=$3
mkdir $srv
cd $srv
case $srv in
github)
git clone https://github.com/$usr/$repo.git
;;
gitlab)
git clone https://github.com/$usr/$repo.git
;;
bitbucket)
git clone https://$usr@bitbucket.org/$usr/$repo.git
;;
esac
