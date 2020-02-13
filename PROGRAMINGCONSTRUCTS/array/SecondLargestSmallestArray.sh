#!/bin/bash -x

#VARIABLES INITIALISION
firstMaximum=0;
secondMaximum=0;
firstMinimum=0;
secondMinimum=0;

#TO GENERATE RANDOM NUMBERS
for(( index=0; index<=9; index++ ))
do
	randomNumber[index]=$((RANDOM%900+100))
done

#ASSIGNNING VALUE TO VARIABLES
firstMaximum=${randomNumber[0]};
secondMaximum=${randomNumber[0]};

#TO FIND SECOND MAXIMUM NUMBER
for (( index=0; index<=9; index++ ))
do
	if [[ randomNumber[index] -gt $firstMaximum ]]
	then
		secondMaximum=$firstMaximum;
		firstMaximum=${randomNumber[index]};
	elif [[ randomNumber[index] -gt $secondMaximum && randomNumber[index] -lt $firstMaximum ]]
	then
		secondMaximum=${randomNumber[index]};
	fi
done
echo "Second Largest Number In Array = $secondMaximum";

#ASSIGNNING VALUE TO VARIABLES
firstMinimum=${randomNumber[0]};
secondMinimum=${randomNumber[0]};

#TO FIND SECOND SMALLEST NUMBER
for (( index=0; index<=9; index++ ))
do
	if [[ randomNumber[index] -lt $firstMinimum ]]
	then
      secondMinimum=$firstMinimum;
      firstMinimum=${randomNumber[index]};
	elif [[ randomNumber[index] -lt $secondMinimum && randomNumber[index] -gt $firstMinimum ]]
	then
		secondMinimum=${randomNumber[index]};
	fi
done
echo "Second Smallest Number In Array = $secondMinimum"


