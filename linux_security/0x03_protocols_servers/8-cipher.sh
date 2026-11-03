#!/bin/bash
sudo nmap -sV -p 443 --script ssl-enum-ciphers "$1"
