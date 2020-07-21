#!/bin/bash
read -p "Enter a positive number: " num
fact=1
if [ $num -lt 0 ]
then
	echo "INVALID ENTRY!!"
else
	for((i=1; i<=num; i++))
	do
		fact=$(($fact*$i))
	done
fi
echo "Factorial of $num is $fact"
