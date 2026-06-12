# Write a shell script to enter elements into an array & display the summation of all the elements. The user will enter the number of elements in the array and the individual elements from the keyboard.

#!/bin/bash

read -p "Enter the number of elements: " n

declare -a arr
sum=0

for (( i=0; i<n; i++ )); do
    read -p "Enter element $((i+1)): " item
    arr[$i]=$item
done

for element in "${arr[@]}"; do
    sum=$(( sum + element ))
done

echo "The summation of all elements is: $sum"