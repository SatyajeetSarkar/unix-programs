read -p "Enter an integer to reverse: " n

rev=0
while [ $n -gt 0 ]
do
    remainder=$(( n % 10 ))
    rev=$(( (rev * 10) + remainder ))
    n=$(( n / 10 ))
done
echo "Reversed number: $rev"