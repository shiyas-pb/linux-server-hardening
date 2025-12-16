#!/bin/bash
# Basic firewall configuration for Linux server

# Backup existing firewall settings (optional)
firewall-cmd --runtime-to-permanent

# Enable SSH & HTTP/HTTPS
firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https

# Reload firewall to apply rules
firewall-cmd --reload

echo "Firewall configured successfully"
