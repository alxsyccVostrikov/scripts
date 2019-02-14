FolderPath=/c/gitlab2/lai
folders=(`ls -p ../ | egrep /`)
scpts=(`ls *`)
scpts2=(`ls -p ../ | grep -v /`)
#scpts2=(`cd ..;ls *.sh *.txt`)


#folder in lai
ProcessorScriptFile(){
for d in ${folders[@]}; do
echo -e "\nim in $FolderPath/$d`echo $?`\n"
	(
	cd $FolderPath/
	git add $d
	echo "$d`echo $?`"
	git commit -m "updt $d folder,`date`"
	if [ $? -eq 0 ]; then
echo -e "\nim in $FolderPath/$d`echo $?`\n"
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
echo -e "\nim in $FolderPath/scripts/$scpt:`echo $?`\n"
	(
	cd $FolderPath/scripts
	git add $scpt
echo -e "\nim in $FolderPath/scripts/$scpt:`echo $?`\n"
	git commit -m "updt $scpt scpt file,`date`"
	if [ $? -eq 0 ]; then
echo -e "\nim in $FolderPath/scripts/$scpt:`echo $?`\n"
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
echo -e "\nim in $FolderPath/$scpt2:`echo $?`\n"
	(
	cd $FolderPath
	git add $scpt2
	#echo "$scpt2:`echo $?`"
	git commit -m "updt $scpt2 file,`date`"
	if [ $? -eq 0 ]; then
	echo -e "\nim in $FolderPath/$scpt2:`echo $?`\n"
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