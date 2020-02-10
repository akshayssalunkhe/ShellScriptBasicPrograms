#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalSalary=0;

#CALCULATING SALARY FOR WORKING DAYS
for (( day=1; day<=$NUM_WORKING_DAYS ;day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in 
	$IS_FULL_TIME)
			empHrs=8
			;;
	$IS_PART_TIME)
			empHrs=4
			;;
	*)
			empHrs=
			;;
	esac

#CALCULATING SALARY 
salary=$(($empHrs*$EMP_RATE_PER_HR));
totalSalary=$(($totalSalary+$salary));
done
