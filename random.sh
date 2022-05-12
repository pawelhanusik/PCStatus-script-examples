#!/bin/bash

progressId=`pcstatus p "Random progress" "Random number every 10 secounds" 0 500`

while [[ true ]] ; do
    pcstatus p -u $progressId `echo $(( $RANDOM % 500 ))`
    sleep 2
done
