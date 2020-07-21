#!/bin/bash -x
function SalaryFunc()
{
	empRateperHr=30
	Sal=$(($1*$empRateperHr))
	echo $Sal
}
fullTime=1
partTime=2
workday=5
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
        Salary=$( SalaryFunc empWorkingHr )
        TotalSalary=$(($TotalSalary+$Salary))
done
