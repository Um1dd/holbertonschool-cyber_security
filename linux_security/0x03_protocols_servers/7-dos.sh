#!/bin/bash
sudo hping3 -S -p 80 -c 10 -i u100000 "$1"
