#!/bin/bash

function next_prime {
    x=$1
    while true; do
        r=$(factor $x | cut -d ' ' -f 2)
        if [ $r == $x ]; then
            echo $x
            return
        fi
        x=$(bc <<< $x+1)
    done
}

x=$1
k=$(($2))
while [ $k -ne 0 ]; do
    x=$(next_prime $x)
    echo $x
    ((k--))
    x=$(bc <<< $x+1)
done
