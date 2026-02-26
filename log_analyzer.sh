#!/bin/bash
if [ $# -eq 0 ]
then
	echo " no argument passed"
       exit 1	
fi
sample="$1"
if [ ! -f $sample  ]
then
	echo " file path doesnot exist"
else
	echo "file path exist"
fi

