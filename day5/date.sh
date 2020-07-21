#!/bin/bash 
read -p "Enter date: " day
read -p "Enter month: " month
if [ $month -gt 2 ] && [ $month -lt 7 ]
then
	if [ $month -eq 3 ] && [ $day -lt 20 ]
	then
		echo "FALSE"
	elif [ $month -eq 6 ] && [ $day -gt 20 ]
	then
		echo "FALSE"
	elif [ $day -gt 31 ] && [ $day -lt 1 ]
	then
		echo "INVALID DATE!!"
	else
		echo "TRUE"
	fi
else
	echo "FALSE"
fi
