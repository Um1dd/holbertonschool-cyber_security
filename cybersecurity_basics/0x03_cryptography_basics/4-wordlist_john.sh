#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1"
john --show "$1" | awk -F: 'NR>1 && $2!="" {print $2}' | grep -v "password cracked" > 4-password.txt
