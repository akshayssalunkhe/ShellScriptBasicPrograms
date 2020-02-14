#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPLOYEE_RATE_PER_HR=20;

#VARIABLE
salary=0;
employeeCheck=0;
employeeHrs=0;


#GENERATING RANDOM VALUES
employeeCheck=$((RANDOM%3));

#GETTING WORK HOURS FROM CASE
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

#CALCULATING SALARY
salary=$(($employeeHrs*$EMPLOYEE_RATE_PER_HR));
echo "$salary"


