#!/bin/bash 
echo "Enter 3 numbers:"
sum=0
for((i=0; i<3; i++))
do
	read -p "NUMBER $(($i+1)):" num
	arr[i]=$num
	((sum+=$num))
done
echo ${arr[@]}
if [ $sum -eq 0 ]
then
	echo "Sum of the array is ZERO"
else
	echo "Sum of the array is NON-ZERO"
fi
