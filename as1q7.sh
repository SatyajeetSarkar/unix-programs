# Write a shell script to input numbers at command line and print a count of positive and negative numbers entered.

positive=0
negative=0

for num in "$@"
do
    if [ $num -gt 0 ]
    then
        positive=$((positive + 1))
    elif [ $num -lt 0 ]
    then
        negative=$((negative + 1))
    fi
done

echo "Positive numbers count: $positive"
echo "Negative numbers count: $negative"