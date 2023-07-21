#!/bin/bash
#Description:associative array
#Write by (wi239144@gmail.com)
#Version: v1.00

#create associative array
declare -A company

#add content
company["TSMC"]=2330
company["Mediatek"]=2454
company["Accton"]=2345
company["CHT"]=2412

read -p "Enter company name to find stock code:" myVar

code="${company[$myVar]}"
echo "Stock code of $myVar is: $code"

exit 0
