#!/bin/bash 
echo "Enter a range :-"
read -p "Enter lower limit: " lower
read -p "Enter upper limit: " upper
if [ $lower -lt 2 ]
then
	lower=2
fi
if [ $lower -gt $upper ]
then
	echo "INVALID ENTRY"
else
	for(( num=lower; num<=upper; num++))
	do
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
		if [ $flag -eq 0 ]
		then
			echo "$num"
		fi
	done
fi
