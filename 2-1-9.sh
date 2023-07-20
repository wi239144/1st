#!/bin/bash
#Description:Calculate area of rectangle,circle or regular triangle
#Write by Jason Chang (wi239144@gmail.com)
#Version:v1.00


read -p $'Which area do you want to calculate?\n1.rectangle\n2.circle\n3.regular triangle\n' select

case $select in

	#1.rectangle
	1)
	read -p "Please enter width of a rectangle:" width
	let $width+1 &> /dev/null || { echo "not integer,can't calculate" ;  exit 1 ; }
	read -p "Please enter length of a rectangle:" length
	let $length+1 &> /dev/null || { echo "not integer,can't calculate" ;  exit 1 ; }
	let recArea=$width*$length; echo "Rectangle area is "$recArea
	;;

	#2.circle
	2)
	read -p "Please enter radius of a circle:" radius
	let $radius+1 &> /dev/null || { echo "not integer,can't calculate" ;  exit 1 ; }
	pi=314
	let cirArea=$pi*$radius*$radius
	cirAreaint=$( echo $cirArea|cut -b 1-$(( ${#cirArea} - 2 )) )
	cirAreadec=$( echo $cirArea|cut -b $(( ${#cirArea} - 1 ))-${#cirArea} )
	echo "Circle area is "$cirAreaint"."$cirAreadec
	;;

	#3.regular triangle
	3)
	read -p "Please enter length of a regular triangle:" lengTh
	let $lengTh+1 &> /dev/null || { echo "not integer,can't calculate" ;  exit 1 ; }
	root=1732
	let triArea=$root/4*$lengTh*$lengTh
	triAreaint=$( echo $triArea|cut -b 1-$(( ${#triArea} - 3 )) )
	triAreadec=$( echo $triArea|cut -b $(( ${#triArea} - 2 ))-${#triArea} )
	echo "Regular triangle area is "$triAreaint"."$triAreadec
	;;

	#other
	*)
	echo "Error,only can enter 1~3."
	;;
esac

exit 0
