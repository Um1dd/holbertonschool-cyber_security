#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER_NAME=$1

# List processes for the user and filter out VSZ=0 or RSS=0
ps -u "$USER_NAME" -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,command \
| awk 'NR==1 || ($5 != 0 && $6 != 0)'
