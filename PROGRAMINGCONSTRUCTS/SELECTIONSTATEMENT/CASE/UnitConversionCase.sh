#!/bin/bash -x

#INPUT LENGTH FROM USER
read -p "Enter The Length " L

#USER'S CHOICE OF CONVERSION
echo "Enter 1 for  Feet to Inch"
echo "Enter 2 for  Feet to Meter"
echo "Enter 3 for  Inch to Feet"
echo "Enter 4 for  Meter to Feet"
read -p " " choice

case $choice in 
	1) I=$(echo "scale=2; $L * 12" | bc );
		echo "Feet to Inch = " $I;
		;;
	2)M=$(echo "scale=2; $L *0.3" | bc );
		echo "Feet to Meter = "$M;
		;;
	3)F=$(echo "scale=2; $L*0.08" | bc );
		echo "Inch to Feet = "$F;
		;;
	4)MF=$(echo "scale=2; $L*3.28" | bc );
		echo "Meter to Feet = "$MF
		;;
	*) echo "Wrong Choice"
		;;
esac


