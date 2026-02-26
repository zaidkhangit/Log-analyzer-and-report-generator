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
	exit 1
else
	echo "file path exist"
fi

echo " print a event to count number of time it occure"
read count
 awk  "/$count/" "$sample" | wc -l
{
echo " ---------Top 5 WARN  Messages----------"
awk ' /WARN/ {print $7}' "$sample" | sort -r |uniq -c |sort -nr | head -5 
} > log_report_2015-07-29.txt 

echo " -------Summary Report-------"
echo " date: 2015-07-29"
echo " log-file name: log_report_2015-07-29.txt"ii
num=$(awk ' $1=="2015-07-29" && /WARN/' "$sample" | wc -l) 
echo " total WARN count on date 2015-07-29 is $num" >> log_report_2015-07-29.txt
