#!/bin/bash -x

#USER INPUT
read -p "Enter the Power : " P

#VARIABLE
sum=1;
for (( i=1; i<=$P; i++ ))
do
	sum=$(( $sum*2 ));
	echo "2^$i=$sum";
done
