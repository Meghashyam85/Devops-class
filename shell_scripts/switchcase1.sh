#!/bin/bash
var=$1
case $var in
	"mon") echo date > date_file ;;
	"tue") echo "listing files and dir" ; ls -lrt ;;
 	"wed") cp date_file date_file.bkp ;;
	*) echo "***************funday" ;;
esac

