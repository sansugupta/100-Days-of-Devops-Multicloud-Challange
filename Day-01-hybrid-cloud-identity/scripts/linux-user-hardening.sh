#!/bin/bash
# Day 01: Linux User Hardening Task
# Objective: Create service users with specific security constraints

# Task A: Create user 'james' with NO interactive login
# Usage: Backup agents, Monitoring exporters
echo "Creating service account 'james'..."
sudo useradd james -s /sbin/nologin

# Verification A
grep james /etc/passwd

# Task B: Create user 'anita' with Custom UID and Home Dir
# Usage: Web Application specific user
echo "Creating app user 'anita'..."
sudo useradd -u 1743 -d /var/www/anita -m anita

# Verification B
grep anita /etc/passwd
ls -ld /var/www/anita
