read -p "Enter an integer to reverse: " num

if [ $num -lt 0 ]; then
    n=$(( num * -1 )) 
else
    n=$num
fi

rev=0
while [ $n -gt 0 ]
do
    remainder=$(( n % 10 ))
    rev=$(( (rev * 10) + remainder ))
    n=$(( n / 10 ))
done

if [ $num -lt 0 ]; then
    rev="-$rev"
fi

echo "Reversed number: $rev"