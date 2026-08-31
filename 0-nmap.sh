#!/bin/bash
nmap -sV -p- --open --min-rate=1000 $1
