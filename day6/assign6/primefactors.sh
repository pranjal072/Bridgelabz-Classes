#!/bin/bash 
read -p "Enter a positive number: " num
if [ $num -lt 2 ]
then
	echo "INVALID ENTRY!!"
else
	while [ $(($num%2)) -eq 0 ]
	do
		echo "2"
		num=$(($num/2))
	done
	
	for(( i=3; $(($i*$i))<=num; ((i+=2)) ))
	do
		while [ $(($num%$i)) -eq 0 ]
		do
			echo "$i"
			num=$(($num/$i))
			done
	done
	if [ $num -gt 2 ] 
	then
		echo "$num"
	fi
fi

