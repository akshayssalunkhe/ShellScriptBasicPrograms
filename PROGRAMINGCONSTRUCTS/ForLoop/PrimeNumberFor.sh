#!/bin/bash -x

#USER INPUT
read -p "Enter the Number: " N

#count=0;
#for (( i=1; i<=$N;i++ ))
#do
	#	check=$(( =$(( $N%$i ))
#	if [ $(( $N%$i )) -eq 0 ]
#	then
#			count=$(($count+1));
#	fi
#done

#if [ $count -eq 2 ]
#then
#	echo "Number is  Prime "
#else
#	echo "Number is not Prime "
#fi

#VARIABLE
isprime=1;

#TO CHECK NUMBER IS PRIME OR NOT
for (( i=2; i<=$N/2; i++ ))
do
	if [ $(($N%$i)) -eq 0 ]
	then
		isprime=$(($isprime-1));
		break;
		fi
done

if [ $isprime -eq 0 ]
then
	echo "Not Prime Number "
else
	echo "Prime Number "
fi 

