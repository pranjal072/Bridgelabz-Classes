#!/bin/bash
read -p "Enter a positive number: " num
flag=0
for ((i=2; i<=$(($num/2)); i++))
do
	rem=$(($num%$i))
	if [ $rem -eq 0 ]
	then
		flag=1
		break
	fi
done

if [ $num -lt 0 ]
then
	echo "INVALID ENTRY!!"
elif [ $num -eq 1 ] || [ $num -eq 0 ]
then
	echo "$num is niether PRIME nor COMPOSITE"
elif [ $flag -eq 0 ]
then
	echo "$num is a PRIME NUMBER"
else
	echo "$num is a COMPOSITE NUMBER"
fi
