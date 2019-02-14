FolderPath=/c/gitlab2/lai
folders=(`ls -p ../ | egrep /`)
scpts=(`ls *`)
scpts2=(`ls -p ../ | grep -v /`)


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
		git push -f

	else
		echo "$d`echo $?`"
	fi
	)
done 
}

#files in scritp folder
ProcessorLaiFolder(){
for scpt in ${scpts[@]}; do
echo "im in $FolderPath/scripts/$scpt:`echo $?`"
	(
	cd $FolderPath/scripts
	git add $scpt
	echo "$FolderPath/$scpt:`echo $?`"
	git commit -m "updt $scpt scpt file,`date`"
	if [ $? -eq 0 ]; then
		#if [[ "$d" = "scripts" ]]; then
		#ProcessorScriptFile
		#	fi

	git push -f
	else
	#	git add .
	#	git commit -m "updt $scpt scpt file,`date`"
	#	git push -f
	echo "$FolderPath/$scpt:`echo $?`"
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
	git add .
	#echo "$scpt2:`echo $?`"
	git commit -m "updt scpt file,`date`"
	if [ $? -eq 0 ]; then
	git push -f
	else
		#git add *.sh *.txt
		#git commit -m "updt $scpt scpt file,`date`"
		#git push -f
	echo "${scpt2}:`echo $?`"
	fi
	)
done;
}

ProcessorLaiFolder
ProcessorScriptFile
ProcessorLaiFile