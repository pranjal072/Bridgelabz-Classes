#!/bin/bash
echo "Think a number between 1 and 100"
echo "Answer 'y' for yes and 'n' for no"
min=1
max=100
mid=$(( ($min+$max)/2 ))
while [ 1 ]
do
	read -p "Is the number greater than or equal to $mid ? " ans
	if [ $ans == "y" ]
	then
		min=$mid
	elif [ $ans == "n" ]
	then
		max=$mid
	else
		echo "INVALID RESPONSE!!"
	fi
	mid=$(( ($min+$max)/2 ))
	if [ $min -eq $mid ] || [ $max -eq $mid ]
	then
		read -p "Is the number greater than $min " ans
		if [ $ans == "y" ]
		then
			echo "Your number is $max"
		else
			echo "Your number is $min"
		fi
	break
	fi
done
