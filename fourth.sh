#Write a shell script that take one input number from user and print 1 to n number using three
#loops (For, while, until). (N = entered number)
#!/bin/bash
read -p "Enter One Number" N
echo $N
for ((i=1 ; i<=$N; i++))
	do 
	echo $i
done
a=1
while [ "$a" -le "$N" ]
do
	echo $a
	a=$((a+1))
done
b=1
until [ "$b" -gt "$N" ];
do 
	echo $b;
	b=$((b+1))
done
