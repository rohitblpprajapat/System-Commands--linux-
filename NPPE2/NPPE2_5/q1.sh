#!/bin/bash

#Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".

is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        echo "No"
        return
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "No"
            return
        fi
    done

    echo "Yes"
}

if [ $# -eq 1 ]; then
    is_prime $1
else
    echo "Usage: $0 <number>"
fi