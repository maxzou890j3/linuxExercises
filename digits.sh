#!/bin/bash
sum=0
for (( i=1000; i<=2000; i++ ));
do
	if [[ $i =~ ^[0-1]+$ ]]; then
	
    sum=`expr $sum + $i`
	fi
done
echo $sum