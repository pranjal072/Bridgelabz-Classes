#!/bin/bash 
read -p "Enter length of REACTANGLE(in feet): " len
read -p "Enter width of REACTANGLE(in feet): " wid
area=$(($len*$wid))
TwentyfiveArea=$(($area*25))
areainACRE=$(($TwentyfiveArea/43560))
echo "Area in Acres is $areainACRE ACRE"
