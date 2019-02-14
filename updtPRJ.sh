folders=(`ls -p ../ | egrep /`)
scpts=(`ls ../*.sh`)
for d in ${folders[@]}; do
#echo	(cd .. ; sh/scp.sh updting $d folder)

$(../git add $d; git commit -m updting $d folder; git push -f)

done;
#for s in ${scpts[@]}; do
#echo	(cd ../ ; sh/scp.sh updting $s file)
#(cd ../ ; sh/scp.sh updting $s file)
#done;

