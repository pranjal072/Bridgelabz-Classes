#!/bin/bash 
min=1000
max=1
for number in {1..5}
do
	num=$((RANDOM%900+100))
	echo "$num"
	if [ $num -gt $max ]
	then
		max=$num
	fi
	if [ $num -lt $min ]
	then
		min=$num
	fi
done
echo "MIN: $min , MAX: $max"

