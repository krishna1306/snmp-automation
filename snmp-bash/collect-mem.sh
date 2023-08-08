#!/bin/bash

MEM_VALUE=`snmpget -v2c -c snmptest 192.168.122.11 iso.3.6.1.4.1.9.9.48.1.1.1.5.1`

if [ -z "$MEM_VALUE" ]; then
    echo "$TIME_STAMP,command_failed" >> $DAY.csv
    exit 1
else
    echo "Command ran successfully."
fi

TIME_STAMP=`date +"%Y-%m-%d %H:%M:%S"`
DAY=`date +"%Y-%m-%d"`

echo "$TIME_STAMP,$MEM_VALUE" >> $DAY.csv