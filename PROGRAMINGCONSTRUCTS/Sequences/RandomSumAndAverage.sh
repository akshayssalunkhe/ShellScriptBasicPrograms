#!/bin/bash -x

#GENERATING FIVE TWO DIGIT NUMBERS

 x1=$(( RANDOM%90+10 ))
 x2=$(( RANDOM%90+10 ))
 x3=$(( RANDOM%90+10 ))
 x4=$(( RANDOM%90+10 ))
 x5=$(( RANDOM%90+10 ))

#CALCULATING SUM
sum=$(( $x1 + $x2 + $x3 + $x4 + $x5 ))
echo "Sum of 5 numbers = $sum"

#CALCULATING AVERAGE
avg=$( echo "scale=2; $sum/5" | bc);
echo "Average of 5 numbers = $avg"
