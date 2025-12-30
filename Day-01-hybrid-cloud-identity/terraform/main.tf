# Day 01: Terraform Task
# Objective: Programmatically generate keys and upload to AWS

provider "aws" {
  region = "us-east-1"
}

# 1. Generate the cryptographic key material internally (RSA 4096)
resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# 2. Upload the Public Key to AWS as a Key Pair
resource "aws_key_pair" "kp" {
  key_name   = "devops-kp"
  public_key = tls_private_key.pk.public_key_openssh
}

# 3. Save the Private Key to local disk 
# SRE Note: In prod, do not store keys in local state. Use Vault/Secrets Manager.
resource "local_file" "pem_file" {
  content         = tls_private_key.pk.private_key_pem
  filename        = "/home/bob/devops-kp.pem"
  file_permission = "0400"
}
