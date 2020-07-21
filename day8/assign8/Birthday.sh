#!/bin/bash 
declare -A Birthmonth
for ((i=1; i<=50; i++))
do
	birth=$((RANDOM%12+1))
	case $birth in
		1)
			jan[$i]="Person$i"
			Birthmonth[JANUARY]=${jan[@]}
			;;
		2)
         feb[$i]="Person$i"
			Birthmonth[FEBRUARY]=${feb[@]}
         ;;
		3)
         mar[$i]="Person$i"
			Birthmonth[MARCH]=${mar[@]}
         ;;
		4)
         april[$i]="Person$i"
			Birthmonth[APRIL]=${april[@]}
         ;;
		5)
         may[$i]="Person$i"
			Birthmonth[MAY]=${may[@]}
         ;;

		6)
         june[$i]="Person$i"
			Birthmonth[JUNE]=${june[@]}
         ;;
		7)
         july[$i]="Person$i"
			Birthmonth[JULY]=${july[@]}
         ;;
		8)
         aug[$i]="Person$i"
			Birthmonth[AUGUST]=${aug[@]}
         ;;
		9)
         sep[$i]="Person$i"
			Birthmonth[SEPTEMBER]=${sep[@]}
         ;;
      10)
         oct[$i]="Person$i"
			Birthmonth[OCTOBER]=${oct[@]}
         ;;
		11)
			nov[$i]="Person$i"
			Birthmonth[NOVEMBER]=${nov[@]}
			;;
		12)
			dec[$i]="Person$i"
			Birthmonth[DECEMBER]=${dec[@]}
			;;
	esac
done

for key in ${!Birthmonth[@]}
do
	echo " $key : ${Birthmonth[$key]}"
done
