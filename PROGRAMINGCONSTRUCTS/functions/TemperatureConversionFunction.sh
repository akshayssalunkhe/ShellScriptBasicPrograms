#!/bin/bash -x

#USER INPUT
read -p "enter temp " temp

#TO CALCULATE TEMPERATURE IN DEGREE
function getTempretureInDegree() {
	if [[ $temp -gt 0 && $temp -lt 100 ]]
	then
		degree=$((($temp-32)*5/9))
		echo "$degree"
	else
		echo "Wrong Input"
	fi
}

#TO CALCULATE TEMPERATURE IN FAHRENHEIT
function getTempretureInFahrenheit() {
	if [[ $temp -ge 32 && $temp -le 212 ]]
	then
      Fahrenheit=$((($temp*9/5)+32))
      echo "$Fahrenheit"
	else
   	echo "Wrong Input"
	fi
}

#ASKING CHOICE OF USER
read -p " for Fahrenheit to degree =1;for Degree to Fahrenheit =2;" ch
case $ch in
	1)getTempretureInDegree $(temp)
		;;
	2) getTempretureInFahrenheit $(temp)
		;;
   *)
		echo "INVALID INPUT"
   	;;
esac
