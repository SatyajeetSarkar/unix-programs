# Write a shell script display username who have login and those users that have logged out.

echo "Users currently logged in:"
who | awk '{print $1}'

echo
echo "Users who have logged out:"
last | grep "gone -" | awk '{print $1}'