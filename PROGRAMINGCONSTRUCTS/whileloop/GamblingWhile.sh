#!/bin/bash -x

#VARIABLES
stack=100;
goal=200;
bet=1;
win=0
loss=0;
result=0;
minimumAmount=1;

#MAIN LOGIC OF GAMBLING
while [[ $stack -ge $minimumAmount && $stack -lt $goal ]]
do
	result=$((RANDOM%2));
	bet=$(($bet+1));
	if [[ $result -eq 0 ]]
	then
		stack=$(($stack+1));
		win=$(($win+1));
	else
		stack=$(($stack-1));
		loss=$(($loss+1));
	fi
done
echo "Times win = $win ";
echo "Times loss = $loss ";
echo "Number of Bets made = $bet ";
