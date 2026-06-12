# Write a shell scipt that will display the factorial of a number supplied as command l ine argument. The number will be passed into a function, which will calculate and return the factorial to the calling statement.

factorial() {
    local num=$1
    local fact=1
    
    for (( i=1; i<=num; i++ ))
    do
        fact=$(( fact * i ))
    done
    
    echo $fact
}

result=$(factorial $1)

echo "The factorial of $1 is: $result"