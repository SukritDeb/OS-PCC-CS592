echo "Enter two numbers"
read a b
sum=`expr $a + $b`
difference=`expr $a - $b`
multiplication=`expr $a \* $b`
division=`echo "scale=2; $a / $b" | bc`
echo "Sum: $sum"
echo "Difference: $difference"
echo "Multiplication: $multiplication"
echo "Division: $division"