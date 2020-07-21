#!/bin/bash -x
fullTime=1
partTime=2
workday=5
empRateperHr=30
day=1
while [ $day -le $workday ]
do
   randomCheck=$(( RANDOM%3 ))
   case $randomCheck in
      $fullTime)
         empWorkingHr=8 ;;
      $partTime)
         empWorkingHr=4 ;;
      *)
         empWorkingHr=0 ;;
   esac
   Salary=$(( $empWorkingHr*$empRateperHr))
   TotalSalary=$(($TotalSalary+$Salary))
   day=$(($day+1))
done

echo "$TotalSalary"
