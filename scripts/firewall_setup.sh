#!/bin/bash
# Basic firewall configuration

firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --reload

echo "Firewall configured successfully"
