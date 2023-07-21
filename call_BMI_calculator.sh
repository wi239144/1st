#!/bin/bash
#Description: BMI_calculator function
#Write by (wi239144@gmail.com)
#Version: v1.00

let BMI="10000*$2/$1/$1"
let BMI2="$BMI*10"

if [ $BMI2 -lt 185 ]
then
	echo "Your BMI is: $BMI , thinness"

elif [ $BMI2 -ge 185 ] && [ $BMI2 -lt 240 ]
then
	echo "Your BMI is: $BMI , normal"
		
elif [ $BMI2 -ge 240 ] && [ $BMI2 -lt 270 ]
then
	echo "Your BMI is: $BMI , at risk of overweight"

else
echo "Your BMI is: $BMI , overweight"

fi

exit 0
