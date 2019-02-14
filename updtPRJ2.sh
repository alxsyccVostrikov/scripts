FolderPath=/c/gitlab2/lai
folders=(`ls -p ../ | egrep /`)
scpts=(`ls *.sh`)
scpts2=(`cd ..; ls *.sh`)




#files in scritp folder
ProcessorScriptFile(){
for scpt in ${scpts[@]}; do
echo "im in $FolderPath/scripts/$scpt:`echo $?`"
	(
	cd $FolderPath/scripts
	git add $scpt
	echo "$FolderPath/$scpt:`echo $?`"
	git commit -m "updt $scpt scpt file"
	if [ $? -eq 0 ]; then
	git push -f
	else
	echo "$FolderPath/$scpt:`echo $?`"
	fi
	)
done 
}

#folder in lai
ProcessorLaiFolder(){
for d in ${folders[@]}; do
echo "im in $FolderPath/$d`echo $?`"
	(
	cd $FolderPath/
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder"
	if [ $? -eq 0 ]; then
			ProcessorScriptFile
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
	cd $FolderPath/
	git add ${scpt2:3}
	#echo "$scpt2:`echo $?`"
	git commit -m "updt ${scpt2} scpt file"
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