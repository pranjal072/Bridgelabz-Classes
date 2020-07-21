#!/bin/bash -x
fullTime=1
partTime=2
randomCheck=$(( RANDOM%3 ))
empRateperHr=30
case $randomCheck in
	$fullTime)
		empWorkingHr=8 ;;
	$partTime)
		empWorkingHr=4 ;;
	*) 
		empWorkingHr=0 ;;
esac

Salary=$(( $empWorkingHr*$empRateperHr))

echo "$Salary"
