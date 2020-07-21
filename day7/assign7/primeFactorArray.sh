#!/bin/bash
read -p "Enter a positive number: " num
orig=$num
if [ $num -lt 2 ]
then
   echo "INVALID ENTRY!!"
else
	counter=0
   while [ $(($num%2)) -eq 0 ]
   do
      primeArray[((counter++))]=2
      num=$(($num/2))
   done

   for(( i=3; $(($i*$i))<=num; ((i+=2)) ))
   do
      while [ $(($num%$i)) -eq 0 ]
      do
      	primeArray[((counter++))]=$i
         num=$(($num/$i))
         done
   done
   if [ $num -gt 2 ]
   then
      primeArray[((counter++))]=$num
   fi
	echo "Prime factors of $orig as stored in array are: "
	echo ${primeArray[@]}
fi
