# Write a shell script to rename all the files in the current directory that have upper
# case names to lower case.

for name in *
do
  newname=`echo $name | tr 'a-z' 'A-Z'`
  if [ "$name" != "$newname" ]
  then
    mv "$name" "$newname"
    echo "Renamed $name to $newname"
  fi
done