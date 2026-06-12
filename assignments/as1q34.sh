# 34. Write a Menu based program in Shell Script to find the record of an Employee according his emp_no,display only emp_no & emp_sal of all the employee & append new records.
#!/bin/bash

data_file="emp_records.txt"

touch "$data_file"

echo "1. Search Employee by ID"
echo "2. Display ID and Salary of All Employees"
echo "3. Append New Employee Record"
echo "4. Exit"

read ch

case $ch in
1)
    echo -n "Enter Employee Number to search: "
    read eno
    record=$(grep "^$eno," "$data_file")
    if [ -n "$record" ]; then
        echo "Record Found: $record"
    else
        echo "Record Not Found"
    fi
    ;;
2)
    echo "Emp_No : Emp_Sal"
    echo "-----------------"
    awk -F, '{print $1 " : " $3}' "$data_file"
    ;;
3)
    echo -n "Enter Employee Number: "
    read eno
    echo -n "Enter Employee Name: "
    read ename
    echo -n "Enter Employee Salary: "
    read esal
    echo "$eno,$ename,$esal" >> "$data_file"
    echo "Record Appended Successfully."
    ;;
4)
    exit ;;
*)
    echo "Invalid Option"
esac