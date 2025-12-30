*The script for the AWS task.*

```bash
#!/bin/bash
# Day 01: AWS Migration Task
# Objective: Create a Key Pair named 'xfusion-kp' in us-east-1

# 1. Verify Region Context
aws configure get region

# 2. Create Key Pair and save Private Key (Security Best Practice)
echo "Creating AWS Key Pair..."
aws ec2 create-key-pair \
    --key-name xfusion-kp \
    --region us-east-1 \
    --query 'KeyMaterial' \
    --output text > xfusion-kp.pem

# 3. Secure the key file
chmod 400 xfusion-kp.pem

# 4. Verify Creation
aws ec2 describe-key-pairs --key-names xfusion-kp --region us-east-1
