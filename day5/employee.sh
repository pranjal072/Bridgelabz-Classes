#!/bin/bash -x
fullTime=1
partTime=2
randomCheck=$(( RANDOM%3 ))
if [ $randomCheck -eq $fullTime ]
then
	echo "Employee is working Full Time"
elif [ $randomCheck -eq $partTime ]
then
	echo "Employee is working Part time"
else
	echo "Employee is Absent"
fi
