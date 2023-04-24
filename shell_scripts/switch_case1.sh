#!/bin/bash
var=$1
case $var in
"task 1check" ) echo "enter the name to check"
read name
if [ -L $name ];
then
echo " this is link "
elif [ -d $name ];
then
echo "this is directory"

elif [ -f $name ];
then
echo "this is file "
else
echo " $name doesnot exit "

fi ;;


"task 2 biggest" )
$a=3
$b=9
if [ $a -gt $b ]
then
echo " $a is greater than $b"
else
echo "$b is greater than $a"
fi ;;

"task 3 crontab")
read -p "Enter the cron job command: " cron_command
(crontab -l ; echo "$cron_command") | crontab -
echo "Cron job added successfully"
;;

"task 4disksize" ) size=$(df -h . | awk -F " " '{print($5)}' | sed '1d' | sed 's/%//g')


if [ "$size" -gt 90 ]; then
echo "disk is $size greater than 90"
fi
;;

esac


if [ "$size" -gt 90 ]; then
echo "disk is $size greater than 90"
fi
;;

esac
