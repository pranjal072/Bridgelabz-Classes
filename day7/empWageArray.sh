#!/bin/bash -x
fullTime=1
partTime=2
workday=5
empRateperHr=30
for (( day=1; day<=$workday; day++))
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
        SalaryArray[$day]=$Salary
done

echo ${SalaryArray[@]}
