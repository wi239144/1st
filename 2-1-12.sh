#!/bin/bash
#Description:2-1-12 inverted triangle
#Write by Jason Chang (wi239144@gmail.com)
#Version:v1.00

jVar=8
for ((i=8;i>=1;i=i-1))
do
	for ((j=$jVar;j>1;j=j-1))
	do
	echo -n "*"
	done
echo "*"
jVar=$jVar-1
done

exit 0
