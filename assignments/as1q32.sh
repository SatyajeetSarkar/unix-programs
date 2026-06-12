# 32. WAP in shell script for making a file with a list of present logged in user in UNIX.
#!/bin/bash

output_file="logged_users.txt"

who | awk '{print $1}' | sort -u > "$output_file"

echo "Logged-in users saved to $output_file"