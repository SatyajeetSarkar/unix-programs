read -p "Enter the value of N: " n

sum=0
for (( i=1; i<=n; i++ ))
do
    sum=$((sum + i))
done

echo "The sum of numbers from 1 to $n is: $sum"