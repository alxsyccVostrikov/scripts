folders=(`ls -p ../ | egrep /`)
for d in folders; do
	sh ../scp.sh updting $d
done;