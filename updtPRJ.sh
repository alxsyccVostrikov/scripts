folders=(`ls -p ../ | egrep /`)
scpts=(`ls *.sh`)
scpts2=(`ls ../*.sh`)
: '
for d in ${folders[@]}; do

echo "im in $d`echo $?`"
	(
	cd /c/gitlab2/lai
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$d`echo $?`"
	fi
	)
done 
'

for scpt in ${scpts[@]}; do
echo "im in $scpt/`echo $?`"
	(
	cd /c/gitlab2/lai/scripts
	git add $scpt
	echo "$scpt`echo $?`"
	git commit -m "updt $scpt scpt file"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$scpt`echo $?`"
	fi
	)
done 


for scpt2 in ${scpts2[@]}; do
echo "im in lai/`echo $?`"
	(
	cd /c/gitlab2/lai/
	git add $scpt2
	echo "$scpt2:`echo $?`"
	git commit -m "updt $scpt2 scpt file"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$scpt2`echo $?`"
	fi
	)
done;

