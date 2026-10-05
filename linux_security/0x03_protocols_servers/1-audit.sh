#!/bin/bash

CONFIG_FILE="/etc/ssh/sshd_config"

if [ "$EUID" -ne 0 ]; then
  echo "Zəhmət olmasa bu skripti sudo ilə işlədin: sudo ./1-audit.sh"
  exit 1
fi

echo "=========================================="
echo "      SSH Configuration Audit Tool"
echo "=========================================="

if [ ! -f "$CONFIG_FILE" ]; then
  echo "Xəta: $CONFIG_FILE faylı tapılmadı!"
  exit 1
fi

echo "[+] Aktiv SSH parametrləri (şərh sətirləri xaric):"
echo "------------------------------------------"
grep -vE '^[[:space:]]*#|^[[:space:]]*$' "$CONFIG_FILE"

echo ""
echo "------------------------------------------"
echo "[+] Təhlükəsizlik Audit Nəticələri:"
echo "------------------------------------------"

ROOT_LOGIN=$(grep -i "^[[:space:]]*PermitRootLogin" "$CONFIG_FILE" | awk '{print $2}')
if [ "$ROOT_LOGIN" = "yes" ]; then
  echo "[!] XƏBƏRDARLIQ: PermitRootLogin 'yes' olaraq təyin edilib (Tövsiyə: no)"
else
  echo "[OK] PermitRootLogin təhlükəsiz şəkildə tənzimlənib."
fi

PASS_AUTH=$(grep -i "^[[:space:]]*PasswordAuthentication" "$CONFIG_FILE" | awk '{print $2}')
if [ "$PASS_AUTH" = "yes" ]; then
  echo "[!] XƏBƏRDARLIQ: PasswordAuthentication 'yes' olaraq təyin edilib."
else
  echo "[OK] PasswordAuthentication təhlükəsizdir."
fi

X11_FWD=$(grep -i "^[[:space:]]*X11Forwarding" "$CONFIG_FILE" | awk '{print $2}')
if [ "$X11_FWD" = "yes" ]; then
  echo "[!] XƏBƏRDARLIQ: X11Forwarding 'yes' olaraq təyin edilib."
else
  echo "[OK] X11Forwarding təhlükəsizdir."
fi

echo "=========================================="
