#!/bin/bash
# Day 01: Azure Migration Task
# Objective: Create an SSH Key Resource named 'devops-kp' in eastus

# 1. Login (Device Code Flow required for lab environment)
# User: kk_lab_user_main...
az login

# 2. Identify Resource Group
RG_NAME=$(az group list --query "[0].name" -o tsv)
echo "Using Resource Group: $RG_NAME"

# 3. Create SSH Key Resource
echo "Creating Azure SSH Key..."
az sshkey create \
  --name devops-kp \
  --resource-group "$RG_NAME" \
  --location eastus

# 4. Verification
az sshkey show --name devops-kp --resource-group "$RG_NAME"
