#!/bin/bash

while [ 1 ]
do
    $1
    if [ "$?" = "0" ] ; then
        echo "Completed normally."
        exit
    else
        echo "Failure. Retrying..."
        sleep 60
	# TODO: Make sleep more dynamic
    fi
done
