# Write a shell script to merge two one-dimensional arrays using functions.

#!/bin/bash

merged_array=()

merge_arrays() {
    merged_array=()

    for element in "$@"; do
        merged_array+=("$element")
    done
}

arr1=("Apple" "Banana" "Cherry")
arr2=("Date" "Elderberry" "Fig")

echo "Array 1: ${arr1[@]}"
echo "Array 2: ${arr2[@]}"

merge_arrays "${arr1[@]}" "${arr2[@]}"

echo "Merged Array: ${merged_array[@]}"