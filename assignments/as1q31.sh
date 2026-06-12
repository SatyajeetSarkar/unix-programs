# 31. Write a shell script to check whether an user is valid user or not.
#!/bin/bash

read -p "Enter the username to check: " username

if grep -q "^$username:" /etc/passwd; then
    echo "Valid User"
else
    echo "Invalid User"
fi