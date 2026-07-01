#!/bin/bash
john --format=nt --wordlist=/usr/share/wordlists/rockyou.txt "$1" | awk -F' ' '/\?/ {print $1}' | tr -d '\r\n ' > 5-password.txt
