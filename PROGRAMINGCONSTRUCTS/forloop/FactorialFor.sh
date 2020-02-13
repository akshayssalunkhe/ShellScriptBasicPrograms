#!/bin/bash -x

#VARIABLES
number=0;
factorial=1;

#TAKING USER INPUT
read -p "Enter a Number To Find Factorial:" number

#CALCULATING FACTORIAL
for (( index=1; index<=$number; index++ ))
do
	factorial=$(($factorial*$index));
done
