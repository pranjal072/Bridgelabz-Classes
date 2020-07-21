#!/bin/bash
min=1000
max=1
Smin=1000
Smax=1
for ((i=0; i<10; i++))
do
   num=$((RANDOM%900+100))
   randomArray[i]=$num
   if [ $num -gt $max ]
   then
		max=$num
   fi
   if [ $num -lt $min ]
   then
      min=$num
   fi
done
for ((i=0; i<10; i++))
do
	val=${randomArray[i]}
	if [ $val -eq $min ] || [ $val -eq $max ]
	then
		continue
	fi
   if [ $val -gt $Smax ]
   then
      Smax=$val
   fi
   if [ $val -lt $Smin ]
   then
      Smin=$val
   fi

done
echo ${randomArray[@]}
echo "Second Smallest Elenemt: $Smin | Second Largest Element: $Smax"
