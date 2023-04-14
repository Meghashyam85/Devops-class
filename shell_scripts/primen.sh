#!/bin/bash

echo "Please enter a number:"
read number

if [ $number -lt 2 ]; then
    echo "$number is not a prime number."
    exit 1
fi

i=2
while [ $i -le `expr $number / 2` ]
do
    if [ `expr $number % $i` -eq 0 ]; then
        echo "$number is not a prime number."
        exit 1
    fi

    i=`expr $i + 1`
done

echo "$number is a prime number."

