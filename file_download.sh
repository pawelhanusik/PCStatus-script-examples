#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 download_file download_file_part final_file_size_MB"
    exit 1
fi

filepath=$1
partFilepath=$2
fileSizeMB=$3

filename=`echo "$filepath" | awk -F'/' '{ print $NF }'`

progressId=`pcstatus p "Download progress" "$filename" 0 $fileSizeMB`

while [ -f "$partFilepath" ] ; do
    pcstatus p -u $progressId `du -h "$partFilepath" | awk '{ printf("%i\n", $1) }'`
    sleep 10
done

if [ -f "$filepath" ] ; then
    pcstatus n "Download finished!" "$filename" > /dev/null
else
    pcstatus n "Download failed!" "$filename" > /dev/null
fi
