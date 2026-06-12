# 33. WAP in shell script which takes two filenames & sort the file in ascending order. Then make a new file (that must be user input) which holds all the contents of both files.
#!/bin/bash

read -p "Enter first filename: " file1
read -p "Enter second filename: " file2

if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: One or both files do not exist."
    exit 1
fi

read -p "Enter the destination filename to save combined contents: " dest_file

sort "$file1" "$file2" > "$dest_file"

echo "Files sorted and merged successfully into $dest_file"