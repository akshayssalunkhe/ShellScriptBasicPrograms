#!/bin/bash -x

#VARIABLES
number=0;
harmonicValue=0;

#INPUT FROM USER
read -p "Enter value: " number

#CALCULATING HARMONIC NUMBER VALUE
for (( index=1; index<=number; index++ ))
do
	harmonicValue="` echo "scale=2;($harmonicValue+1.0/$index)" |bc`"
done
printf "Harmonic value of $number = $harmonicValue";
