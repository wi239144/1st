#!/bin/bash
#Description: BMI calculator by call function
#Write by (wi239144@gmail.com)
#Version: v1.00


read -p "Please enter an integer of your height in centimeter:" heigHt
let $heigHt+1 &> /dev/null || { echo "Not integer,can't calculate" ;  exit 1 ; }
read -p "Please enter an integer of your weight in kilogram:" weigHt
let $weigHt+1 &> /dev/null || { echo "Not integer,can't calculate" ;  exit 1 ; }

./call_BMI_calculator.sh $heigHt $weigHt

exit 0
