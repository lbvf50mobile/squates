#!/usr/bin/env bash
echo "Good day"
export SQUATES_FILE='tests/full'
echo $SQUATES_FILE
SQUATES_DATE=$(date +'%H:%M %d.%m.%Y')
echo "" > $SQUATES_FILE
echo $SQUATES_DATE" 10 squates 01" >> $SQUATES_FILE
echo $SQUATES_DATE" 10 squates 02" >> $SQUATES_FILE
echo $SQUATES_DATE" 10 squates 03" >> $SQUATES_FILE
echo $SQUATES_DATE" 10 squates 04" >> $SQUATES_FILE
echo $SQUATES_DATE" 10 pushups 01" >> $SQUATES_FILE
echo $SQUATES_DATE" 10 pushups 02" >> $SQUATES_FILE

ruby squates