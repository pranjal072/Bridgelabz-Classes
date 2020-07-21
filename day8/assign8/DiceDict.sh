#!/bin/bash 
declare -A DiceTrack
for (( i=1; i<7; i++))
do
	DiceTrack[$i]=0
done
while [ 1 ]
do
	dice=$((RANDOM%6+1))
	((DiceTrack[$dice]++))
	if [ ${DiceTrack[$dice]} -eq 10 ]
	then
		max=$dice
		break
	fi
done
minval=10
for key in ${!DiceTrack[@]}
do
	echo "$key : ${DiceTrack[$key]}"
	if [ ${DiceTrack[$key]} -lt $minval ]
	then
		minval=${DiceTrack[$key]}
	fi
done
count=0
for k in ${!DiceTrack[@]}
do
	val=${DiceTrack[$k]}
	if [ $val -eq $minval ]
	then
		minarr[((count++))]=$k
	fi
done
	echo "MAX FREQ: $max"
	echo "MIN FREQ: ${minarr[@]}"
