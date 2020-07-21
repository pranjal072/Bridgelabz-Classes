#!/bin/bash -x
declare -A Dict
for((i=0; i<3; i++))
do
	read -p "Key: " key
	read -p "Value: " val

	Dict[$key]=$val
done

echo "VALUES: " ${Dict[@]}
echo "KEYS: " ${!Dict[@]}
