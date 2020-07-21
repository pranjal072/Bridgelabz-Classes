#!/bin/bash -x
fullTime=1
partTime=2
randomCheck=$(( RANDOM%3 ))
empRateperHr=30
if [ $randomCheck -eq $fullTime ]
then
	empWorkingHr=8
elif [ $randomCheck -eq $partTime ]
then
	empWorkingHr=4
else
	empWorkingHr=0
fi

Salary=$(( $empWorkingHr*$empRateperHr))

echo "$Salary"
