#!/bin/bash -x

#USER INPUT
read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

#CALCULATIONS
R1=$(($a+$b*$c))
echo "$R1"

R2=$(($a%$b+$c))
echo "$R2"

R3=$(($c+$a/$b))
echo "$R3"

R4=$(($a*$b+$c))
echo "$R4"

#TO FIND GREATER AMONG  RESULT
if [ $R1 -gt $R2 -a $R1 -gt $R3 -a $R1 -gt $R4 ]
then
	echo "R1 is GREATER"
elif [ $R2 -gt $R1 -a $R2 -gt $R3 -a $R2 -gt $R4 ]
then
	echo "R2 is GREATER"
elif [ $R3 -gt $R1 -a $R3 -gt $R2 -a $R3 -gt $R4 ]
then
   echo "R3 is GREATER"
elif [ $R4 -gt $R1 -a $R4 -gt $R2 -a $R4 -gt $R3 ]
then
   echo "R4 is GREATER"

fi

#TO FIND LEAST AMONG RESULT
if [ $R1 -lt $R2 -a $R1 -lt $R3 -a $R1 -lt $R4 ]
then
   echo "R1 is LEAST"
elif [ $R2 -lt $R1 -a $R2 -lt $R3 -a $R2 -lt $R4 ]
then
   echo "R2 is LEAST"
elif [ $R3 -lt $R1 -a $R3 -lt $R2 -a $R3 -lt $R4 ]
then
   echo "R3 is LEAST"
elif [ $R4 -lt $R1 -a $R4 -lt $R2 -a $R4 -lt $R3 ]
then
   echo "R4 is LEAST"
fi
