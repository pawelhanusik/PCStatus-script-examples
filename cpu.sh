#!/bin/bash

progressId=`pcstatus p "CPU usage" "-" 0 100`

while [[ true ]] ; do
    pcstatus p -u $progressId `mpstat | tail -n 1 | awk '{printf("%i\n", 100 - $NF)}'`
    sleep 10
done
