#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHr=0;
totalWorkingDays=0;

#FUNCTION TO GET WORKING HOURS
function getWorkingHours(){
		case $1 in
			$IS_FULL_TIME)
				workHours=8
					;;
			$IS_PART_TIME)
				workHours=4
					;;
			*)
				workHours=0
					;;
		esac
		echo "$workHours"
}

#CHECKING CONDITION FOR TOTAL WORKING HOURS AND NUMBERS OF WORKING DAYS
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));

