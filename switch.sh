#!/bin/bash
date=`date "+%Y-%m-%d_%H:%M:%S"`
FILE=~/Dropbox/IFTTT/Gmail/email.txt
LOGFILE=~/switch.log
if [ -f "$FILE" ];then
LOGFILE=~/switch.log
lines=($(cat $FILE))
if [ "${lines[0]}" == "on" ]; then
echo "Schalter an"
echo $date on >> $LOGFILE
echo
else
echo "Schalter aus"
echo $date off >> $LOGFILE
fi
rm -rf $FILE
fi
