#!/bin/bash -x

#USER INPUT
read -p "Enter a Number To Find Factorial : " N

#VARIABLE
fact=1;

for (( i=1; i<=$N; i++ ))
do
	fact=$(($fact*$i));
done

echo "Factorial of $N = $fact"

