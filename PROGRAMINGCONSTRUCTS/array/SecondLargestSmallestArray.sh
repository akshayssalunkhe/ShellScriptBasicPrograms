#!/bin/bash -x

#TO GENERATE RANDOM NUMBER
for((i=0;i<=9;i++))
do
	a[i]=$((RANDOM%900+100))
done

echo ${a[@]}

#TO FIND  SECOND MAX ELEMENT
#VARIABLE INITIALIZATION
max=${a[0]};
secMax=${a[0]};

#LOGIC TO FIND SECOND MAX
for (( i=0; i<=9; i++ ))
do
	if [[ a[i] -gt $max ]]
	then
		secMax=$max;
		max=${a[i]};
	elif [[ a[i] -gt $secMax  &&  a[i] -lt $max ]]
		then
			secMax=${a[i]};
	fi
done
echo "SECOND LARGEST ELEMENT IN ARRAY IS = $secMax ";


#VARIABLE INITIALIZATION
min=${a[0]};
secMin=${a[0]};

#TO FIND SECOND SMALLEST ELEMENT
for (( i=0; i<=9; i++ ))
do
   if [[ a[i] -lt $min ]]
   then
      secMin=$min;
      min=${a[i]};
   elif [[ a[i] -lt $secMin  &&  a[i] -gt $min ]]
   	then
         secMin=${a[i]};
   fi
done
echo "SECOND SMALLEST NUMBER IN ARRAY IS = $secMin"


