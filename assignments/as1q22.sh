# Write a shell script that computes the gross salary of an employee
# according to the following rules given below. The basic salary is input
# interactively through the keyboard.
# If basic salary is < 1500 then HRA = 10% of'the basic and DA = 90% of the basic.
# If basic salary is >= 1500 then HRA = Rs 500 and DA = 98% of the basic.

#!/bin/bash

echo -n "Enter the Basic Salary: "read basic

if ! [[ "$basic" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

if (( $(echo "$basic < 1500" | bc -l) )); then
    hra=$(echo "scale=2; $basic * 0.10" | bc -l)
    da=$(echo "scale=2; $basic * 0.90" | bc -l)
else
    hra=500.00
    da=$(echo "scale=2; $basic * 0.98" | bc -l)
fi

gross_salary=$(echo "scale=2; $basic + $hra + $da" | bc -l)

echo "Gross Salary : Rs. $gross_salary"