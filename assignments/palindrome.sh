read -p "Enter a string or number to check: " input

reversed=""
len=${#input}
for (( i=$len-1; i>=0; i-- ))
do
    reversed="$reversed${input:$i:1}"
done

if [ "$input" == "$reversed" ]; then
    echo "'$input' is a palindrome."
else
    echo "'$input' is not a palindrome."
fi