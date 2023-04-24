#!/bin/bash
num=$1 #5 for example
fact=1
while [ $num -gt 0 ]
do
        fact=`expr $fact \ * $num`       # fact = 1*5    =>5 * 4 * 3 * 2 * 1
        num=`expr $num - 1`             # num = 5-1     => 4 3 2 1
done
echo fact of $1: $fact
