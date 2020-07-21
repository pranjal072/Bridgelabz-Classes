#!/bin/bash 
for number in {1..5}
do
	num=$((RANDOM%90+10))
	echo "$num"
	sum=$(($sum+$num))
done
avg=$(($sum/5))
echo "SUM: $sum , AVERAGE: $avg"
