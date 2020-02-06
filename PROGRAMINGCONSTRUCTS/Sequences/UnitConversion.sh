#!/bin/bash -x

#INCH TO FEET CONVERSION
echo " inch to feet conversion"
feet=$(echo "scale=2; 42*1/12" | bc );

#AREA IN SQURE FEETS
TotalSquareFeet=$((60*40))
echo "TotalSquareFeet=$TotalSquareFeet "

echo "feet to meter conversion"
meter=$(echo "scale=2; 0.3048*60" | bc);
echo "60 feet = $meter meters"

meter1=$(echo "scale=2; 0.3048*40" | bc);
echo "40 feet = $meter1 meters"

#AREA IN SQURE METERS
TotalSquareMeters=$(echo "scale=2; $TotalSquareFeet*0.092" | bc)
echo "TotalSquareMeters= $TotalSquareMeters"

#SQUREMETERS TO ACRE CONVERSION
Acres=$( echo "scale=2; $TotalSquareMeters*0.00024" | bc);

#AREA OF 25 PLOTS IN ACRES 
AreaOf25PlotsInAcre=$( echo "scale=2; $Acres*25" | bc);
echo "AreaOf25PlotsInAcres= $AreaOf25PlotsInAcre"
