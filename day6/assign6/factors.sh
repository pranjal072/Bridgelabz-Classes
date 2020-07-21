#!/bin/bash 
read -p "Enter a positive number: " num
if [ $num -lt 1 ]
then
	echo "INVALID ENTRY!!"
else
	for((i=1; i<=num; i++))
	do
		rem=$(($num%$i))
		if [ $rem -eq 0 ]
		then
			echo "$i"
		fi
	done
fi

