#!/bin/bash 
echo " 1 is for FEET TO INCH"
echo " 2 is for INCH TO FEET"
echo " 3 is for FEET TO METER"
echo " 4 is for METER TO FEET"
read -p "Enter Choice as mentioned above: " choice
read -p "Enter LENGTH: " len

case $choice in
	1)
		ans=$(($len*12))
		echo "Length in feet is $ans FEET"
		;;
	2)
		ans=$(($len/12))
		echo "Length in inch is $ans INCHES"
		;;
	3)
		ans=$(($len/3))
		echo "Length in feet is $ans FEET"
		;;
	4)
		ans=$(($len*3))
		echo "Length in meter is $ans METERS"
		;;
	*)
		echo "INVALID ENTRY"
esac


