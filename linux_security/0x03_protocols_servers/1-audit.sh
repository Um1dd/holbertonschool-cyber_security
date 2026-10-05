#!/bin/bash

# SSH konfiqurasiya faylının yoxlanılması
CONFIG_FILE="/etc/ssh/sshd_config"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: $CONFIG_FILE not found"
    exit 1
fi

# Şərh sətirlərini və boş sətirləri təmizləyərək aktiv parametrləri göstərir
grep -vE '^[[:space:]]*#|^[[:space:]]*$' "$CONFIG_FILE"
