#!/bin/bash

for ((i=0; i<10; i++))
do
   num=$((RANDOM%900+100))
   arr[i]=$num
done
echo "Unsorted Array : ${arr[@]}"
for ((m=0; m<9; m++))
do
	min=$m
	for ((n=$(($m+1)); n<10; n++))
	do
		if [ ${arr[n]} -lt ${arr[min]} ]
		then
			min=$n
		fi
	done
	if [ $min -ne $m ]
	then
		#swap
		temp=${arr[m]}
		arr[m]=${arr[min]}
		arr[min]=$temp
	fi
done

echo "Sorted Array : ${arr[@]} "
echo "Second Smallest Element: ${arr[1]} | Second Largest Element: ${arr[8]}"
