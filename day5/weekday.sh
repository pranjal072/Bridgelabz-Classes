#!/bin/bash 
read -p "Enter a number from 0-6: " day
if [ $day -eq 0 ]
then
	echo "SUNDAY"
elif [ $day -eq 1 ]
then
   echo "MONDAY"
elif [ $day -eq 2 ]
then
   echo "TUESDAY"
elif [ $day -eq 3 ]
then
   echo "WEDNESDAY"
elif [ $day -eq 4 ]
then
   echo "THURSDAY"
elif [ $day -eq 5 ]
then
   echo "FRIDAY"
elif [ $day -eq 6 ]
then
	echo "SATURDAY"
else
	echo "INVALID ENTRY!"
fi
