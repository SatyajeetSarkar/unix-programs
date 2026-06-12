# Write a shell program to store the names, size, permissions of all the regular files present
# in the current directory in a file named backup.

> backup

for file in *
do
    if [ -f "$file" ]
    then
        echo "File Na230me: $file" >> backup
        echo "Size: $(stat -c%s "$file") bytes" >> backup
        echo "Permissions: $(stat -c%A "$file")" >> backup
        echo "-----------------------------" >> backup
    fi
done

echo "Backup created successfully in file 'backup'"