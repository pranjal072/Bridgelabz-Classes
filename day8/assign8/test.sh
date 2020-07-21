#!/bin/bash 
declare -A Dice
arr=(jan feb mar)

for ((i=0; i<10; i++))
do
	x=$((RANDOM%3))
	${arr[x]}[$i]=$i
done

echo ${arr[0]}
