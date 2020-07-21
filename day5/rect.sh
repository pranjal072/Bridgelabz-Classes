#!/bin/bash 
read -p "Enter length of REACTANGLE(in feet): " len
read -p "Enter width of REACTANGLE(in feet): " wid
lenINmeter=$(($len/3))
widINmeter=$(($wid/3))
echo "Dimension of rectangular plot in meters is $lenINmeter x $widINmeter"
