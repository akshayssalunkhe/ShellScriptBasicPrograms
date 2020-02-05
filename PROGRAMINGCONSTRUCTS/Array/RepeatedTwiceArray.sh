#!/bin/bash -x

#GENERATING NUMBERS AND FINDING REPETATION
for((i=1;i<=100;i++))
do
		x=$(($i % 10))
		y=$(($i / 10))

	if(($x==$y))
	then
		a[$j]=$i
		j=$(($j+1))
	fi
done

#DISPLAYING ARRAY OF REAPEATED ELEMENTS
echo "${a[@]}"
