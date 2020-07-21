#!/bin/bash
echo "Enter a range between 0-100 :-"
read -p "Enter lower limit: " lower
read -p "Enter upper limit: " upper
if [ $lower -gt $upper ] || [ $lower -lt 0 ] || [ $upper -gt 100 ]
then
   echo "INVALID ENTRY"
else
	counter=0
	for ((i=lower; i<=upper; i++))
	do
		if [ $(( $i%11 )) -eq 0 ]
		then
			arr[((counter++))]=$i
		fi
	done
	echo "The numbers with repeated digits between $lower and $upper are: "
	echo ${arr[@]}
fi

