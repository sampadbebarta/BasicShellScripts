#!/bin/bash

for files in `ls *.log.1`
do
	baseName=`echo $files | awk -F. '{ print $1 }'1;
	extension=`echo $files | awk -F. '{ print $2 }'1;
	currentDate=`date +'%d%m%Y'`;
	newFileName=`echo $baseName-$currentDate.$extension`;
	echo "Basename: "$baseName "	Extension: " $extension  "   CurrentDate: " $currentDate;
done
