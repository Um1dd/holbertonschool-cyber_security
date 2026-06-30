#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
   echo "Please run as root or use sudo."
   exit 1
fi

# Fetch and display the last 5 login sessions
last -n 5
