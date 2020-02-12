#!/bin/bash -x

#INPUT FROM USER
read -p "Enter value: " N

#VARIABLE
sum=0;
#CALCULATING HARMONIC NUMBER VALUE
for (( i=1; i<=N; i++ ))
do
	sum="` echo "scale=2;($sum+1.0/$i)" |bc`" 
done
	echo "Harmonic value of $N = $sum;"
