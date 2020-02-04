#!/bin/bash -x

#USER INPUT
read -p "Enter the Number" N

if [ $N -eq 1 ]
then
		echo "SUNDAY"
elif [ $N -eq 2 ]
then
		echo "MONDAY"
elif [ $N -eq 3 ]
then
		echo "TUESDAY"
elif [ $N -eq 4 ]
then
		echo "WEDNESDAY"
elif [ $N -eq 5 ]
then
		echo "THURSDAY"
elif [ $N -eq 6 ]
then
		echo "FRIDAY"
elif [ $N -eq 7 ]
then
		echo "SATURDAY"
else
		echo "WRONG INPUT"
fi

