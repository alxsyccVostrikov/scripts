FolderPath=/c/gitlab2/lai
folders=(`ls -p ../ | egrep /`)
scpts=(`ls *.sh`)
scpts2=(`(cd ..;ls *.sh)`)


ProcessorFile(){
for scpt2 in ${scpts2[@]}; do
echo "im in $FolderPath/$scpt2:`echo $?`"
	cd $FolderPath
	git add $scpt2
	echo "$scpt2:`echo $?`"
	git commit -m "updt $scpt2 scpt file"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$scpt2:`echo $?`"
	fi
done;	
}


ProcessorFolder(){
for d in ${folders[@]}; do

echo "im in $d`echo $?`"
	(
	cd $FolderPath
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder"
	if [ $? -eq 0 ]; then
		if [ $d == "scripts" ]; then
		(cd $d;git add $scpt;git commit -m "updt $scpt scpt file";git push -f)
		fi
	git push -f
	else
	echo "$d`echo $?`"
	fi
	)
done 
}
ProcessorFile
ProcessorFolder


<<CommentFolderPath
for d in ${folders[@]}; do

echo "im in $d`echo $?`"
	(
	cd /c/gitlab2/lai
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder"
	if [ $? -eq 0 ]; then
		if [ $d == "scripts" ]; then
		(cd $d;git add $scpt;git commit -m "updt $scpt scpt file";git push -f)
		fi
	git push -f
	else
	echo "$d`echo $?`"
	fi
	)
done 
CommentFolderPath

: '
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
'
<<CommentFilePath
for scpt2 in ${scpts2[@]}; do
echo "im in lai/$scpt2:`echo $?`"
	cd /c/gitlab2/lai/
	git add $scpt2
	echo "$scpt2:`echo $?`"
	git commit -m "updt $scpt2 scpt file"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$scpt2:`echo $?`"
	fi
done;
CommentFilePath


