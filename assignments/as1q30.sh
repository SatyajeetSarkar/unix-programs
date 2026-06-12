# Write a shellscript that accepts values from 1 to 6 OM displays
# (a) the list of files in the present Working directory if the choice is 1,
# (b) the current date if the choice is 2,
# (c) the process status if choice is 3,
# (d) all the current users of the system if the choice is 4,
# (e) displaysthe present working directory if the choice is 5,
# (f) exits if the choice is 6, and
# (g) the message "invalid option" and exitsifthe choice is anything else.

#!/bin/bash

echo "1.List Files"
echo "2.Date"
echo "3.Process Status"
echo "4.Users"
echo "5.PWD"
echo "6.Exit"

read ch

case $ch in
1) ls ;;
2) date ;;
3) ps ;;
4) who ;;
5) pwd ;;
6) exit ;;
*) echo "Invalid Option"
esac