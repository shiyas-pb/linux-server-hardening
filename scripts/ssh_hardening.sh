#!/bin/bash
# SSH hardening script: disable root login & password authentication

SSHD_CONFIG="/etc/ssh/sshd_config"
BACKUP="/etc/ssh/sshd_config.bak"

# Backup SSH config
cp $SSHD_CONFIG $BACKUP

# Disable root login
if grep -q "^PermitRootLogin" $SSHD_CONFIG; then
	  sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG
  else
	    echo "PermitRootLogin no" >> $SSHD_CONFIG
fi

# Disable password authentication
if grep -q "^PasswordAuthentication" $SSHD_CONFIG; then
	  sed -i 's/^PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG
  else
	    echo "PasswordAuthentication no" >> $SSHD_CONFIG
fi

echo "SSH hardening applied successfully"
echo "Backup created at: $BACKUP"

# Restart SSH only if systemd exists
if command -v systemctl >/dev/null 2>&1; then
	  systemctl restart sshd
	    echo "SSHD service restarted"
    else
	      echo "systemd not available (WSL). Restart SSH manually if needed."
fi
