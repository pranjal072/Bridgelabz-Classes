#!/bin/bash -x
function degC()
{
	res=$(( ($1-32)*(5/9) ))
	echo $res
}

function degF()
{
	res=$(( ($1*(9/5))+32 ))
	echo $res
}

echo "Enter 1 for degC to DegF: "
echo "Enter 2 for degF to degC: "
read -p "Enter Choice: " choice
case $choice in
	1)
		read -p "Enter temperature in degC (0-100 degC): " inp
		if [ $inp -lt 0 ] || [ $inp -gt 100 ]
		then
			echo "VALUE OUT OF BOUND!!"
		else
			ans=$( degF inp )
			echo "$inp degC is equal to $ans degF"
		fi
		;;
	2)
      read -p "Enter temperature in degF (32-212 degF): " inp
      if [ $inp -lt 32 ] || [ $inp -gt 212 ]
      then
         echo "VALUE OUT OF BOUND!!"
      else
         ans=$(( degC inp ))
         echo "$inp degF is equal to $ans degC"
      fi
		;;
	*)
		echo "INVALID INPUT!!"
		;;
esac


