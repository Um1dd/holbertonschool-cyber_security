#!/bin/bash
echo 'hping3 --flood --rand-source'; hping3 -S -p 80 -c 3 127.0.0.1
