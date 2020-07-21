#!/bin/bash 
read -p "Enter value of n : " n
i=1
while [ $i -le $n ]
do
	val=$((2**$i))
	echo "$val"
	((i++))
	if [ $val -eq 256 ]
	then
		echo "LIMIT REACHED!"
		break
	fi
done
