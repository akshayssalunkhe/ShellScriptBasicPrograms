#!/bin/bash -x

declare -A dice

#DECLARING INITIAL VALUES 
dice[1]=0;
dice[2]=0;
dice[3]=0;
dice[4]=0;
dice[5]=0;
dice[6]=0;

#GENERATING DICE VALUES
while [[ ${dice[1]} -lt 10  &&  ${dice[2]} -lt 10  &&  ${dice[3]} -lt 10  &&  ${dice[4]} -lt 10  &&  ${dice[5]} -lt 10  && ${dice[6]} -lt 10 ]]
do
	result=$((RANDOM%6+1))
	echo "result = $result"
	dice[$result]=$((${dice[$result]}+1));
done


#FINDING MAXIMUM OCCURENCE NUMBER
if [[ ${dice[1]} -gt ${dice[2]}  &&  ${dice[1]} -gt ${dice[3]}  && ${dice[1]} -gt ${dice[4]}  && ${dice[1]} -gt ${dice[5]}  && ${dice[1]} -gt ${dice[6]}  ]]
then
	echo "Maximum Occurence is of 1"
elif [[ ${dice[2]} -gt ${dice[3]}  && ${dice[2]} -gt ${dice[4]}  && ${dice[2]} -gt ${dice[5]}  && ${dice[2]} -gt ${dice[6]}  ]]
	then
		echo "Maximum occurence is of 2"
elif [[ ${dice[3]} -gt ${dice[4]}  && ${dice[3]} -gt ${dice[5]}  && ${dice[3]} -gt ${dice[6]}  ]]
	then
		echo "Mximum Occurence is of 3"
elif [[ ${dice[4]} -gt ${dice[5]}  && ${dice[4]} -gt ${dice[6]}  ]]
	then
		echo "Maximum occurenc is of 4 "
elif [[ ${dice[5]} -gt ${dice[6]}  ]]
	then
		echo "Maximum Occurence is of 5"
		else
			echo "Maximum Occurence is of 6"
fi

#FINDING MINIMUM OCCURENCE NUMBER

if [[ ${dice[1]} -lt ${dice[2]}  &&  ${dice[1]} -lt ${dice[3]}  && ${dice[1]} -lt ${dice[4]}  && ${dice[1]} -lt ${dice[5]}  && ${dice[1]} -lt ${dice[6]}  ]]
then
   echo "Minimum Occurence is of 1"
elif [[ ${dice[2]} -lt ${dice[3]}  && ${dice[2]} -lt ${dice[4]}  && ${dice[2]} -lt ${dice[5]}  && ${dice[2]} -lt ${dice[6]}  ]]
   then
      echo "Minimum occurence is of 2"
elif [[ ${dice[3]} -lt ${dice[4]}  && ${dice[3]} -lt ${dice[5]}  && ${dice[3]} -lt ${dice[6]}  ]]
   then
      echo "Minimum Occurence is of 3"
elif [[ ${dice[4]} -lt ${dice[5]}  && ${dice[4]} -lt ${dice[6]}  ]]
   then
      echo "Minimum occurenc is of 4 "
elif [[ ${dice[5]} -lt ${dice[6]}  ]]
   then
      echo "Maximum Occurence is of 5"
      else
         echo "Maximum Occurence is of 6"
fi

