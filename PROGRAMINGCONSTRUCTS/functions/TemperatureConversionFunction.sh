#!/bin/bash -x

#VARIABLES
temperature=0;
degree=0;
choice=0;
fahrenheit=0;

#USER INPUT
read -p "enter temperature " temperature

#TO CALCULATE TEMPERATURE IN DEGREE
function getTemperatureInDegree() {
	if [[ $temperature -gt 0 && $temperature -lt 100 ]]
	then
		degree=$( echo "scale=2; ((($temperature-32)*5/9))" |bc )
		echo "$degree"
	else
		echo "Wrong Input"
	fi
}

#TO CALCULATE TEMPERATURE IN FAHRENHEIT
function getTemperatureInFahrenheit() {
	if [[ $temperature -ge 32 && $temperature -le 212 ]]
	then
		fahrenheit=$( echo "scale=2; ((($temperature*9/5)+32))" |bc )
		echo "$fahrenheit"
	else
   	echo "Wrong Input"
	fi
}

#ASKING CHOICE OF USER
read -p " For Fahrenheit to degree = 1; For Degree to Fahrenheit = 2;" choice
case $choice in
	1)
		( getTemperatureInDegree $temperature )
			;;
	2)
		( getTemperatureInFahrenheit $temperature )
			;;
	*)
		echo "INVALID INPUT"
			;;
esac
