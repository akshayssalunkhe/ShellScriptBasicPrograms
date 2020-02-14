#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPLOYEE_RATE_PER_HR=20;

#VARIABLES
randomCheck=0;
employeeHrs=0;
salary=0;

#GENERATING RANDOM VALUES
randomCheck=$((RANDOM%3));

#CHECKING CONDITION
if [ $IS_FULL_TIME -eq $randomCheck ];
then
	employeeHrs=8;
elif [ $IS_PART_TIME -eq $randomCheck ];
then
	employeeHrs=4;
else
	employeeHrs=0;
fi

#CALCULATING SALARY
salary=$(($employeeHrs*$EMPLOYEE_RATE_PER_HR));
echo "salary is =  $salary"
