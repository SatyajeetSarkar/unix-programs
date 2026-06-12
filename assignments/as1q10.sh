# Write a Shell Script to copy the content of a file to another file.

echo "Enter source file name:"
read source

echo "Enter destination file name:"
read dest

cp "$source" "$dest"

echo "File copied successfully."