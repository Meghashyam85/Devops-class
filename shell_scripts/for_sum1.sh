#!/bin/bash
sum=0
var=$*
for i in $var
do
	sum=`expr $sum + $i`
done
echo sum of $# dig : $sum

