# Write a shell script to print only those words of the file FILE, whose beginning and last character are same.

#!/bin/bash

if [ ! -f "FILE" ]; then
    echo "Error: FILE does not exist."
    exit 1
fi

for word in $(cat FILE); do
    word=$(echo "$word" | tr -d '[:punct:]')
    
    if [ ${#word} -le 1 ]; then
        continue
    fi
    
    first_char=${word:0:1}
    last_char=${word: -1}
    
    if [ "$first_char" = "$last_char" ]; then
        echo "$word"
    fi
done