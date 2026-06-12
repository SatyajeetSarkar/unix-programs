read -p "Enter the number of terms for the Fibonacci sequence: " terms

read -p "Enter the first term (a): " a
read -p "Enter the second term (b): " b

echo "The Fibonacci sequence is:"

for ((i=0; i<terms; i++))
do
    echo -n "$a "
    
    fn=$((a + b))
    
    a=$b
    b=$fn
done

echo ""