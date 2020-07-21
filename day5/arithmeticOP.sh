#!/bin/bash 
read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c
sol1=$(( $a+$b*$c ))
sol2=$(( $a%$b+$c ))
sol3=$(( $c+$a/$b ))
sol4=$(( $a*$b+$c ))
min=99999
max=-99999
i=1
for number in {$sol1,$sol2,$sol3,$sol4}
do
   echo "solution $i is: $number"
   if [ $number -gt $max ]
   then
      max=$number
   fi
   if [ $number -lt $min ]
   then
      min=$number
   fi
	((i++))
done
echo "MIN: $min , MAX: $max"
