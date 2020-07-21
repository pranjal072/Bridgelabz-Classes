#!/bin/bash
read -p "Enter Value of n : " n
echo -n "1/1 "
sum=1
for ((i=2; i<=n; i++))
do
	harmonic=$(( 1/$i ))
	sum=$(( $sum+$harmonic ))
	echo -n "+ 1/$i "
done
echo " "
echo "SUM = $sum"
