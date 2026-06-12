# 21. Write a report using awk command/s where commission is 5% if the salary is
# less than 500 and commission is 10% if the salary is greater than 5000. The format
# is :
# This is the employee informatiori
# Todays date is :
# emp no. name salary age commission
# The No. of employees is :
# The total salary is : Rs.
# The total commission is : Rs.
# Thanking you for seeing this
# report.

#!/bin/bash

awk 'BEGIN { print "This is the employee information"; "date +%d-%m-%Y" | getline dt; print "Todays date is : " dt; print "--------------------------------------------------\nemp no. name       salary     age   commission\n--------------------------------------------------"; s=0; c=0; n=0 } { com=0; if($3<500) com=$3*0.05; else if($3>5000) com=$3*0.10; printf "%-7s %-10s %-10.2f %-5s %-10.2f\n", $1, $2, $3, $4, com; s+=$3; c+=com; n++ } END { print "--------------------------------------------------\nThe No. of employees is : " n "\nThe total salary is : Rs. " s "\nThe total commission is : Rs. " c "\nThanking you for seeing this\nreport." }' emp_data.txt
