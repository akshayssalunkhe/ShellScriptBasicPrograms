#!/bin/bash -x

#	CANSTANTS FOR PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=160;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
			$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
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
			empHrs=0
			;;

	esac
		if [ $empHrs -ne 0 ]
		then
				((totalWorkingDays++));
		fi
	totalEmpHrs=$(($totalEmpHrs+$empHrs))

done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));




