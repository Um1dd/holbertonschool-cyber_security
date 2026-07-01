#!/bin/bash
john --pot=win.pot --format=nt --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --pot=win.pot --format=nt --show "$1" | cut -d: -f2 | grep -v "password cracked" | tr -d '\r' | sed '/^$/d' > 5-password.txt
