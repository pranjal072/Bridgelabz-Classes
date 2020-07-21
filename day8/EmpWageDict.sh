#!/bin/bash -x
fullTime=1
partTime=2
workday=5
empRateperHr=30

declare -A SalaryDict

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
        key="day$day"
	Salary=$(( $empWorkingHr*$empRateperHr))
        SalaryDict[$key]=$Salary
done

echo ${SalaryDict[@]}
echo ${!SalaryDict[@]}

read -p "Enter day: " val
echo ${SalaryDict[$val]}
