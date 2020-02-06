#!/bin/bash -x

#INPUT FOR ARRAY SIZE
read -p "Enter The Array Size : " size

#READING ELEMENTS FROM USER
for (( i=0; i<size; i++ ))
do
	read -p "Enter Element $i : " a[i]; 
done

#DISPLAYING ARRAY ELEMENTS
echo "${a[@]}"

#VARIABLE
count=0;

#MAIN LOGIC TO CALCULATE ADDITION
for (( i=0; i<$size; i++ ))
do
	for (( j=i+1; j<$size; j++ ))
	do
		for (( k=j+1; k<$size; k++ ))
		do
			if [[ $((a[i]+a[j]+a[k])) -eq 0 ]]
			then
				count=$(($count+1))
				echo "sum of${a[i]}+${a[j]}+${a[k]}=0"
			fi
		done
	done
done

if [[ $count -eq 0 ]]
then
	echo "No Elements Adds To Zero "
fi
