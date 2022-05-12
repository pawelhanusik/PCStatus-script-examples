#!/bin/bash

maxRam=`free | head -n 2 | tail -n 1 | awk '{print $2}'`
progressId=`pcstatus p "RAM usage" "-" 0 $maxRam`

while [[ true ]] ; do
    pcstatus p -u $progressId `free | head -n 2 | tail -n 1 | awk '{print $3}'`
    sleep 10
done
