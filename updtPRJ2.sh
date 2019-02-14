FolderPath=/c/gitlab2/lai
folders=(`ls -p ../ | egrep /`)
scpts=(`ls *.sh`)
scpts2=(`cd ..; ls *.sh`)



ProcessorLaiFolder(){
#files in scritp folder
for scpt in ${scpts[@]}; do
echo "im in $FolderPath/scripts/$scpt:`echo $?`"
	(
	cd $FolderPath/scripts
	git add $scpt
	echo "$FolderPath/$scpt:`echo $?`"
	git commit -m "updt $scpt scpt file,`date`"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$FolderPath/$scpt:`echo $?`"
	fi
	)
done 
}
#folder in lai
ProcessorScriptFile(){
for d in ${folders[@]}; do
echo "im in $FolderPath/$d`echo $?`"
	(
	cd $FolderPath/
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder,`date`"
	if [ $? -eq 0 ]; then
		if [ $d = "scripts" ]; then
			ProcessorScriptFile
			fi
		git push -f
	else
		echo "$d`echo $?`"
	fi
	)
done 
}
#files in lai
ProcessorLaiFile(){
for scpt2 in ${scpts2[@]}; do
echo "im in $FolderPath/$scpt2:`echo $?`"
	(
	cd $FolderPath
	git add ${scpt2}
	#echo "$scpt2:`echo $?`"
	git commit -m "updt ${scpt2} scpt file,`date`"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "${scpt2}:`echo $?`"
	fi
	)
done;
}

ProcessorLaiFolder
#ProcessorScriptFile
ProcessorLaiFile