#!/bin/bash
read -p "enter a string:" string
reverse_string=$(echo $string | rev)
if [ "$string" = "$reverse_string" ]; then
        echo "$string is a palindrome"
else
        echo "$string is not a palindrome"
fi

