	#Bubble sort written by alexsy mostovik
	FolderPath=/c/gitlab2/lai
	folders=(`ls -p ../ | egrep /`)
	scpts=(`ls *.sh`)
	scpts2=(`(cd ..;ls *.sh)`)
	arq=scp.sh
	ar=(gitlab2)
	dir=(`#script` $(: scripts) lai py)
	dir2=($(echo ${dir[*]}| tr " " "\n" | sort -n))
	dir3=($(echo scripts | tr " " "\n" | sort -n))
	
	for((i=0;i<${#ar[@]}-1;i++));do
		for((j=0;j<${#ar[@]}-$i-1;j++));do
			if [[ ${ar[$j]} > ${ar[$j+1]} ]];then
					tempMAIOR=${ar[$j]}
					ar[$j]=${ar[$j+1]}
					ar[$j+1]=$tempMAIOR
					echo arrumando....${ar[@]}
			fi 
		done
	done
		: '
	for((i=0;i<${#dir[@]}-1;i++));do
		for((j=0;j<${#dir[@]}-$i-1;j++));do
			if [[ ${dir[$j]} > ${dir[$j+1]} ]];then
				tempMAIOR=${dir[$j]}
				dir[$j]=${dir[$j+1]}
				dir[$j+1]=$tempMAIOR
				echo arrumando....${dir[@]}
			fi 
		done
	done
		'
	dirATUAL=$(pwd)
	for i in ${ar[@]};do
		for j in ${dir2[@]};do
			for k in ${dir3[@]};do
				echo -e "\n\nim in $i\\$j"
				if [ -d  /c/$i/$j ]; then
					cd /c/$i/$j/ ; sh ../$arq $*
					if [ -d  /c/$i/$j/$k ]; then
						echo -e "\n\nim in $i\\$j\\$k"
						#folderPath
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
						#file path
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
					fi
				fi
			done
		done
	done
	cd "$dirATUAL"
	
