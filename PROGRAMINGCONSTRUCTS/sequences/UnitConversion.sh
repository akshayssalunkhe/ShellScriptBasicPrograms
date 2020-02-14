#!/bin/bash -x

#VARIABLES
feet=0;
meter=0;
totalSqureFeet=0;
feetToMeter=0;
totalSqureMeter=0;
acres=0;

#INCH TO FEET CONVERSION
feet=$(echo "scale=2; 42*1/12" | bc );

#AREA IN SQURE FEETS
totalSquareFeet=$((60*40))
echo "Total Square Feet=$totalSquareFeet "

#FEET TO METER CONVERSION
feetToMeter=$(echo "scale=2; 0.3048*60" | bc);
echo "60 Feet = $feetToMeter meters"

meter=$(echo "scale=2; 0.3048*40" | bc);
echo "40 Feet = $meter meters"

#AREA IN SQURE METERS
totalSquareMeters=$(echo "scale=2; $totalSquareFeet*0.092" | bc)
echo "Total Square Meters = $totalSquareMeters"

#SQUREMETERS TO ACRE CONVERSION
acres=$( echo "scale=2; $totalSquareMeters*0.00024" | bc);

#AREA OF 25 PLOTS IN ACRES 
areaOfPlotsInAcre=$( echo "scale=2; $acres*25" | bc);
echo "Area Of 25 Plots In Acres= $areaOfPlotsInAcre"

