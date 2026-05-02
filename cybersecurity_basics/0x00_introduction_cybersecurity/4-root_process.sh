#!/bin/bash
ps -u "$1" -f | grep -E "UID|[^0] +[^0]"
