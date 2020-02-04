#!/bin/bash

#USER INPUT
read -p "enter the power : " power

#VARIABLE
sum=1

for (( i=1; i<=$power; i++ ))
do
	sum=$(($sum * 2 ))
	echo " 2 power $int =  $sum"
done
