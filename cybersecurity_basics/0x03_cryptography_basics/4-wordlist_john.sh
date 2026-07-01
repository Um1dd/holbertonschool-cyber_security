#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show "$1" | cut -d: -f2 | grep -v "password cracked" | sed '/^$/d' > 4-password.txt
