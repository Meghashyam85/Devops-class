#!/bin/bash
echo "enter a number:"
read num
if [ $num -eq 1 ]
then
        echo "1 is not prime number"
elif [ $num -eq 2 ]
then
        echo "2 is a prime number"
else	
	for (( i=2; i<$num; i++ ))
        do
                if [ $(($num % $i)) -eq 0 ]
                then
                        echo "$num is not prime number"
                        exit
                fi
        done
        echo "$num is a prime number"
fi

