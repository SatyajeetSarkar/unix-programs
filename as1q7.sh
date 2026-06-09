# Write a shell script to input numbers at command line and print a count of positive and negative numbers entered.

pos=0
neg=0

for num in "$@"
do
    if [ $num -gt 0 ]
    then
        pos=$((pos + 1))
    elif [ $num -lt 0 ]
    then
        neg=$((neg + 1))
    fi
done

echo "Positive numbers count: $pos"
echo "Negative numbers count: $neg"