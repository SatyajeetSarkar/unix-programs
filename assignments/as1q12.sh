# Write a bash script, lower.sh to "lowercase" a directory of files. If a lowercase file of the same name alreadly exists in that directory, the program should warn the use and NOT overwrite the existing file. egg. $ is dir/ One-File TWO-File Three-FILE one-file $ ./lower.sh dir/ Warning: Not overwriting one-file $ is dir One-File one-file three-file two-file

dir=$1

for file in "$dir"/*
do
    name=$(basename "$file")
    lower=$(echo "$name" | tr 'A-Z' 'a-z')

    if [ "$name" != "$lower" ]
    then
        if [ -e "$dir/$lower" ]
        then
            echo "Warning: Not overwriting $lower"
        else
            mv "$dir/$name" "$dir/$lower"
        fi
    fi
done