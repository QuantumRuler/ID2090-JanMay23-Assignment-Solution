#!/usr/bin/bash
#ae22b062
c=`expr $2 + 2`
if [ $# -eq 2 -a $c -lt 203 ]
then
	sage -c "R= RealField(669);a=R($1);print(a)" | cut -b $c
else 
	echo "Give Proper input"
	exit
fi 
