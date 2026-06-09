read -p "Enter first number: " a
read -p "Enter second number: " b

num1=$a
num2=$b

while [ $b -ne 0 ]
do
    remainder=$((a % b))
    a=$b
    b=$remainder
done

gcd=$a

if [ $gcd -eq 0 ]; then
    lcm=0
else
    lcm=$(( (num1 * num2) / gcd ))
fi

echo "GCD of $num1 and $num2 is: $gcd"
echo "LCM of $num1 and $num2 is: $lcm"