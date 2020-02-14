#!/bin/bash -x

#VARIABLES
firstNumber=0;
secondNumber=0;
thirdNumber=0;
firstResult=0;
secondResult=0;
thirdResult=0;
fourthResult=0;

#USER INPUT
read -p "Enter First Number: " firstNumber
read -p "Enter Second Number: " secondNumber
read -p "Enter Third Number: " thirdNumber

#CALCULATIONS
firstResult=$(($firstNumber+$secondNumber*$thirdNumber))
echo "$firstResult"

secondResult=$(($firstNumber%$secondNumber+$thirdNumber))
echo "$secondResult"

thirdResult=$(($thirdNumber+$firstNumber/$secondNumber))
echo "$thirdResult"

fourthResult=$(($firstNumber*$secondNumber+$thirdNumber))
echo "$fourthResult"

#TO FIND GREATER AMONG  RESULTS
if [ $firstResult -gt $secondResult -a $firstResult -gt $thirdResult -a $firstResult -gt $fourthResult ]
then
	echo "firstResult is GREATER"
elif [ $secondResult -gt $firstResult -a $secondResult -gt $thirdResult -a $secondResult -gt $fourthResult ]
then
	echo "secondResult is GREATER"
elif [ $thirdResult -gt $firstResult -a $thirdResult -gt $secondResult -a $thirdResult -gt $fourthResult ]
then
	echo "thirdResult is GREATER"
elif [ $fourthResult -gt $firstResult -a $fourthResult -gt $secondResult -a $fourthResult -gt $thirdResult ]
then
	echo "fourthResult is GREATER"
fi

#TO FIND LEAST AMONG RESULTS
if [ $firstResult -lt $secondResult -a $firstResult -lt $thirdResult -a $firstResult -lt $fourthResult ]
then
	echo "firstResult is LEAST"
elif [ $secondResult -lt $firstResult -a $secondResult -lt $thirdResult -a $secondResult -lt $fourthResult ]
then
	echo "secondResult is LEAST"
elif [ $thirdResult -lt $firstResult -a $thirdResult -lt $secondResult -a $thirdResult -lt $fourthResult ]
then
	echo "thirdResult is LEAST"
elif [ $fourthResult -lt $firstResult -a $fourthResult -lt $secondResult -a $fourthResult -lt $thirdResult ]
then
	echo "fourthResult is LEAST"
fi
