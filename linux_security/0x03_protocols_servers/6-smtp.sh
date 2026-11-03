#!/bin/bash
grep -E '^[[:space:]]*smtpd_tls_security_level[[:space:]]*=' /etc/postfix/main.cf | grep -v '^[[:space:]]*#' || echo "STARTTLS not configured"
