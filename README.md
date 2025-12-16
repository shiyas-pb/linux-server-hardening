# Linux Server Hardening

## Objective
Implement basic Linux server security hardening using best practices suitable for production environments.

## Tools Used
- Linux (AlmaLinux / RHEL)
- SSH
- firewalld
- systemd

## Architecture
User → SSH (Key-based Authentication) → Linux Server  
Firewall and security rules protect system services.

## Hardening Steps
- Disable SSH root login
- Disable password-based authentication
- Enable firewall rules
- Restart secure services

## Usage
```bash
sudo bash scripts/ssh_hardening.sh
sudo bash scripts/firewall_setup.sh
