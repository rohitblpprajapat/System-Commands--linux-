#!/bin/bash

#Write a bash script that reads a value from the standard input stream and prints PNUM if the value is a postive number or 0; prints NNUM if it is a negative number; else print STRING.



# if [ "$1" -ge 0 ]; then
#     echo "PNUM"
# elif [ "$1" -lt 0 ]; then                       # This thing not working because it is direct taking input from command line and not processing it 
#     echo "NNUM"
# else
#     echo "STRING"
# fi


read num
if [[ $num =~ ^[+-]?([0-9]+(\.[0-9]*)?|[.][0-9]+) ]]; then
    if (( num >= 0));then
        echo "PNUM"
    else
        echo "NNUM"
    fi
else
    echo "STRING"
fi
