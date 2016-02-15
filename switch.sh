#!/bin/bash
date=`date "+%Y-%m-%d_%H:%M:%S"`
FILE=~/Dropbox/IFTTT/Gmail/email.txt
LOGFILE=~/switch.log
if [ -f "$FILE" ];then
 LOGFILE=~/switch.log
 lines=($(cat $FILE))
  if [ "${lines[0]}" == "on" ]; then
   echo "Schalter an"
   # Hier Befehl zur Steuerung etwa eines Schalters einbauen
   echo $date on >> $LOGFILE
  fi

  if [ "${lines[0]}" == "off" ]; then
   echo "Schalter aus"
   # Hier Befehl zur Steuerung etwa eines Schalters einbauen
   echo $date off >> $LOGFILE
  fi
rm -rf $FILE
fi
