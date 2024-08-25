#!/bin/bash

x=$1
while true; do
    r=$(factor $x | cut -d ' ' -f 2)
    if [ $r == $x ]; then
        echo $x
        break
    fi
    x=$(bc <<< $x+1)
done
