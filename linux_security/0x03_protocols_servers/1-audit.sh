#!/bin/bash
grep -Ev '^[[:space:]]*(#|$)' /etc/ssh/sshd_config
