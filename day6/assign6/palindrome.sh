#!/bin/bash
function reverse()
{
	num=$1
	rev=0
	while [ $num -gt 0 ]
	do
		digit=$(( $num%10 ))
		num=$(( $num/10 ))
		rev=$(( ($rev*10)+digit ))
	done
	echo "$rev"
}

read -p "Enter a number :" numb
revnum=$( reverse $numb )
if [ $numb -eq $revnum ]
then
	echo "The number is a PALINDROME"
else
	echo "The Number is NOT a PALINDROME"
fi
