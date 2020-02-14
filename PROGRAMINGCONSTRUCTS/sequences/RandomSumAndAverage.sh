#!/bin/bash -x

#VARIABLES
firstNumber=0;
secondNumber=0;
thirdNumber=0;
fourthNumber=0;
fifthNumber=0;
sum=0;
average=0;

#GENERATING FIVE TWO DIGIT NUMBERS
firstNumber=$(( RANDOM%90+10 ))
secondNumber=$(( RANDOM%90+10 ))
thirdNumber=$(( RANDOM%90+10 ))
fourthNumber=$(( RANDOM%90+10 ))
fifthNumber=$(( RANDOM%90+10 ))

#CALCULATING ADDITION
sum=$(( $firstNumber + $secondNumber + $thirdNumber + $fourthNumber + $fifthNumber ))
echo "Sum of 5 Numbers = $sum"

#CALCULATING AVERAGE
average=$( echo "scale=2; $sum/5" | bc);
echo "Average of 5 numbers = $average"
