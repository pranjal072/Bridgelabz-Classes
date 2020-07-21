#!/bin/bash
hwin=0
twin=0
while [ 1 ]
do
	side=$((RANDOM%2))
	if [ $side -eq 0 ]
	then
		((hwin++))
		echo "Heads : $hwin"
	else
		((twin++))
		echo "Tails : $twin"
	fi
	if [ $hwin -eq 11 ] || [ $twin -eq 11 ]
	then
		break
	fi
done
if [ $hwin -eq 11 ]
then
	echo "Heads win 11 times"
else
	echo "Tail wins 11 times"
fi

