#!/bin/bash
echo "enter the name to check"
read name
if [-L $name ];then
	echo "$same is a link"
elif [-d $name ];then
	echo "$name is a dir"
elif [-f$name ];then
	echo "$name is a file"
else
	echo "$name doesnt exist"
fi

