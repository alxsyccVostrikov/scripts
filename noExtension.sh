dirA=.
dirD=testing
whatToDo=mv
file=(`find $dirA -maxdepth 1 -type f ! -name '*.*'`)
for i in ${file[@]};do
$whatToDo $i $dirD
done