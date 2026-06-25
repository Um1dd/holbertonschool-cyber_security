#!/bin/bash
subfinder -d $1 -silent | tee /dev/stderr | xargs -I {} sh -c 'ip=$(dig +short {}); [ ! -z "$ip" ] && echo "{},$(echo "$ip" | tail -n1)"' > $1.txt
