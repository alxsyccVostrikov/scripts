op=$1
usr=$2
repo=$3
case $op in
github|gitlab)
mkdir $op
cd $op
git clone https://github.com/$usr/$repo.git
;;
bitbucket)
mkdir $op
cd $op
git clone https://alxsycc@bitbucket.org/$usr/$repo.git
;;
esac
