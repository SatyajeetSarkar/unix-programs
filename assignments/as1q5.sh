# Write a shell script that accepts a username from the user and displays all the information about the user from /etc/passwd file

echo "Enter username:"
read uname

info=$(grep "^$uname:" /etc/passwd)

if [ -n "$info" ]
then
    echo "User Information:"
    echo "$info"
else
    echo "User not found"
fi