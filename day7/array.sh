#!/bin/bash -x

for(( i=0; i<=5; i++ ))
do
	array[i]=$i
done

echo ${array[@]}
