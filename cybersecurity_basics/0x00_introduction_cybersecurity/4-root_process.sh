#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER_NAME=$1

ps -u "$USER_NAME" -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,command \
| grep -v -E '^[^ ]+ +[0-9]+ +[0-9.]+ +[0-9.]+ +0 +| +0 +[^ ]+$'
