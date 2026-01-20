# Ansible Linux Production Hardening

## Overview
This project demonstrates production-grade Linux server hardening using Ansible.
It is designed for RHEL-based systems and follows real enterprise best practices.

## Objectives
- Secure SSH access (custom port, key-only auth, SELinux aware)
- Enforce least privilege user management
- Configure firewall and SELinux safely
- Apply kernel hardening via sysctl
- Ensure idempotent and lockout-safe automation

## Architecture
Controller:
- Ansible Control Node (RHEL)

Managed Nodes:
- RHEL Linux servers

SSH:
- Port: 2222
- Password authentication: Disabled
- Root login: Disabled
- SELinux enforced

## Roles
| Role | Description |
|----|----|
| ssh | SSH hardening with SELinux support |
| users | Secure admin user management |
| firewall | Firewalld configuration |
| selinux | SELinux enforcing configuration |
| sysctl | Kernel hardening |

## Safety Measures
- sshd configuration validated before restart
- SELinux ports explicitly defined
- Firewall rules applied before service changes

## How to Run
```bash
make syntax
make test
make deploy

