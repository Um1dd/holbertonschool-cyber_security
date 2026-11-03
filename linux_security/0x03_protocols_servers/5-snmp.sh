#!/bin/bash
grep -E '^[[:space:]]*(com2sec|rocommunity|rwcommunity)[[:space:]].*public' /etc/snmp/snmpd.conf
