#!/bin/bash 
function reverse()
{
	val=$1
	rev=0
	while [ $val -gt 0 ]
	do
		digit=$(( $val%10 ))
		val=$(( $val/10 ))
		rev=$(( ($rev*10)+digit ))
	done
	echo "$rev"
}

function primecheck()
{
	flag=0
	for ((i=2; i<=$(($1/2)); i++))
	do
		rem=$(($1%$i))
		if [ $rem -eq 0 ]
		then
			flag=1
			break
		fi
	done
	echo "$flag"
}

read -p "Enter a positive number: " num
if [ $num -lt 0 ]
then
	echo "INVALID ENTRY!!"
elif [ $num -eq 1 ] || [ $num -eq 0 ]
then
	echo "$num is niether PRIME nor COMPOSITE"
else
	chk=$( primecheck num )
	revnum=$( reverse $num )
	revchk=$( primecheck revnum)
	if [ $chk -eq 0 ] && [ $revchk -eq 0 ]
	then
		echo " Both $num and its reverse- $revnum are PRIME NUMBERS"
	elif [ $chk -eq 0 ] && [ $revchk -eq 1 ]
	then
		echo "$num is a PRIME but its reverse- $revnum is COMPOSITE"
	elif [ $chk -eq 1 ] && [ $revchk -eq 0 ]
	then
		echo "$num is a COMPOSITE but its reverse- $revnum is PRIME"
	else
		echo  "Both $num and its reverse- $revnum are COMPOSITE NUMBERS"
	fi
fi

