#!/bin/bash
# Disable root login and password authentication

SSHD_CONFIG="/etc/ssh/sshd_config"

sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG
sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG

systemctl restart sshd
echo "SSH hardening applied successfully"
