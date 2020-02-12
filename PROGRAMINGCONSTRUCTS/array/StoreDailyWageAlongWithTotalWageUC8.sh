#!/bin/bash -x

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalWorkHours=0;
totalWorkingDays=0;

function getWorkingHours() {
	case $1 in
		$IS_FULL_TIME)
			workingHours=8
			;;
		$IS_PART_TIME)
			workingHours=4
			;;
		*)
			workingHours=0
			;;
	esac
	echo $workHours
}

function calcDailyWage() {
	local workHrs=$1
	wage=$(( $workHours * $EMP_RATE_PER_HR ))
	echo $wage
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
			$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours  $((RANDOM%3)) )"
	totalWorkHours=$($totalWorkHours+$workHours)
	empDailyWage[$totalWorkingDays]="$( calcDailyWage * $workHours )"
done
totalSalary="$( calcDailyWage $totalWorkHours )"
echo "Daily Wage " ${empDailyWage[@]}
