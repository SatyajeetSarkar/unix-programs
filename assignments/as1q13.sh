# Write a shell script that will compile & execute all C files in the current directory.

for file in *.c
do
    [ -e "$file" ] || continue
    
    filename="${file%.c}"
    
    echo "Compiling $file..."
    
    gcc "$file" -o "$filename"
    
    if [ $? -eq 0 ]; then
        echo "Running $filename:"
        ./"$filename"
    else
        echo "Error: Compilation failed for $file"
    fi
done