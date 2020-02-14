#!/bin/bash -x

#CANSTANTS FOR PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=160;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
employeeCheck=0;
totalEmployeeHrs=0;
totalWorkingDays=0;
employeeHrs=0;

#CHECKING FOR CONDITIONS
while [[ $totalEmployeeHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	employeeCheck=$((RANDOM%3));
	case $employeeCheck in
		$IS_FULL_TIME)
			employeeHrs=8
				;;
		$IS_PART_TIME)
			employeeHrs=4
				;;
		*)
			employeeHrs=0
				;;
	esac
	if [ $employeeHrs -ne 0 ]
	then
		((totalWorkingDays++));
	fi
	totalEmployeeHrs=$(($totalEmployeeHrs+$employeeHrs))
done

#CALCULATING TOTAL SALARY
totalSalary=$(($totalEmployeeHrs*$EMP_RATE_PER_HR));




