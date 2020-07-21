#!/bin/bash 
read -p "Enter value of n : " n
for ((i=0; i<=n; i++))
do
	val=$((2**$i))
	echo "$val"
done
