folders=(`echo */`)
for d in folders; do
	sh ../scp.sh updting $d
done;