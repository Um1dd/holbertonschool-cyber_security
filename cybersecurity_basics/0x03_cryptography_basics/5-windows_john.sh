#!/bin/bash
john --format=nt --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --format=nt --show "$1" | head -n 1 | cut -d: -f2 | tr -d '\r\n ' > 5-password.txt
