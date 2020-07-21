#!/bin/bash
side=$((RANDOM%2))
if [ $side -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi


