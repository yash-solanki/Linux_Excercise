#Write a shell script that take two input numbers from user at runtime and display arithmetic
#operation on that numbers, find out max, & min number from them, find weather that numbers
#negative or positive
#!/bin/bash
read -p "Enter First Number" num1
read -p "Enter Second Number" num2

echo -e "\n Sum is $[$num1+$num2]"
echo -e "\n Subtraction is $[$num1-$num2]"
echo -e "\n Multiplication is $[$num1*$num2]"
echo -e "\n Division is $[$num1/$num2]\n"

if [ $num1 -gt $num2 ]; then 
	echo " $num1 is Max";
	echo " $num2 is Min";
else
	echo " $num2 is Max";
	echo " $num1 is Min";
fi
