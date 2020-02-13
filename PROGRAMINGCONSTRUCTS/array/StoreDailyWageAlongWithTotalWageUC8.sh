#!/bin/bash -x

#CONSTANTS FOR THE PROGRAM
IS_PART_TIME=2;
IS_FULL_TIME=1;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalWorkHours=0;
totalWorkingDays=0;

#FUNCTION TO GET WORKING HOURS
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
	echo $workingHours
}

#FUNCTION TO CALCULATE DAILY WAGE
function calcDailyWage() {
	local workHrs=$1
	wage=$(( $workHours * $EMP_RATE_PER_HR ))
	echo $wage
}

#CHECKING FOR CONDITIONS
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
			$totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours  $((RANDOM%3)) )"
	totalWorkHours=$($totalWorkHours+$workHours)
	empDailyWage[$totalWorkingDays]="$( calcDailyWage * $workHours )"
done

#CALLING FUNCTION TO CALCULATE WAGE
totalSalary="$( calcDailyWage $totalWorkHours )"
echo "Daily Wage " ${empDailyWage[@]}
