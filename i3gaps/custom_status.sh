#!/bin/sh
# shell script to prepend i3status with more stuff

i3status -t | while :
do
    read line
    output=$(python /home/ds/.i3/status.py)
    /bin/echo "$output | $line" || exit 1
done
