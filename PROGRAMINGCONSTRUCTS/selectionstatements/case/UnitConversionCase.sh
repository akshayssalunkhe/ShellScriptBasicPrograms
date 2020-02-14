#!/bin/bash -x

#VARIABLES
feetToInches=0;
feetToMeter=0;
inchesToFeet=0;
meterToFeet=0;
length=0;
choice=0;

#INPUT LENGTH FROM USER
read -p "Enter The Length " length

#USER'S CHOICE OF CONVERSION
echo "Enter 1 for  Feet to Inch"
echo "Enter 2 for  Feet to Meter"
echo "Enter 3 for  Inch to Feet"
echo "Enter 4 for  Meter to Feet"
read -p " " choice

case $choice in
	1) feetToInches=$(echo "scale=2; $length * 12" | bc );
		echo "Feet to Inch = " $feetToInches;
		;;
	2)feetToMeter=$(echo "scale=2; $length *0.3" | bc );
		echo "Feet to Meter = "$feetToMeter;
		;;
	3)inchesToFeet=$(echo "scale=2; $length*0.08" | bc );
		echo "Inch to Feet = "$inchesToFeet;
		;;
	4)meterToFeet=$(echo "scale=2; $length*3.28" | bc );
		echo "Meter to Feet = "$meterToFeet
		;;
	*) echo "Wrong Choice"
		;;
esac


