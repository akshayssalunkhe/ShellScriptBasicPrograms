#!/bin/bash -x

countHead=0;
countTail=0;

while [[ $countHead -lt 11 && $countTail -lt 11 ]]
do
	z=$((RANDOM%2));
	if [[ $z -eq 0 ]]
	then
			countHead=$(($countHead+1));
			echo "Head $countHead";
	else
			countTail=$(($countTail+1));
			echo "Tail $countTail";
	fi
done
