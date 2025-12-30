# Day 01: Hybrid Cloud Identity & Linux Hardening

## 📋 Executive Summary
**Task:** Establish secure access foundations for a hybrid cloud migration (AWS & Azure) and implement OS-level security hardening for on-premise application servers.

**Artifacts in this folder:**
*   [`scripts/`](./scripts/): Shell scripts containing the CLI commands used for AWS, Azure, and Linux.
*   [`terraform/`](./terraform/): Infrastructure as Code to generate keys programmatically.

## 🛠️ Implementation Details

### 1. AWS Access Setup (CLI)
**Goal:** Create a Key Pair `xfusion-kp` in `us-east-1`.
**Command File:** [`scripts/aws-migration-task.sh`](./scripts/aws-migration-task.sh)
**SRE Note:** We extracted the key material immediately to a secured `.pem` file.

### 2. Azure Access Setup (CLI)
**Goal:** Create an SSH Key Resource `devops-kp` in `eastus`.
**Command File:** [`scripts/azure-migration-task.sh`](./scripts/azure-migration-task.sh)
**SRE Note:** Used Device Code Flow (`az login`) to bypass MFA/Conditional Access restrictions common in enterprise tenants.

### 3. Linux System Hardening
**Goal:** Create service accounts with specific security constraints.
**Command File:** [`scripts/linux-user-hardening.sh`](./scripts/linux-user-hardening.sh)
*   **User `james`:** Assigned `/sbin/nologin` to prevent interactive shell access.
*   **User `anita`:** Assigned static UID `1743` to ensure NFS compatibility across the cluster.

### 4. Infrastructure as Code (Terraform)
**Goal:** Generate `devops-kp` using Terraform `tls` provider.
**Code:** [`terraform/main.tf`](./terraform/main.tf)
**Observation:** Terraform simplifies state management but requires careful handling of the `tfstate` file since it contains the unencrypted private key.

## 🚀 Architecture

```mermaid
flowchart TD
    Admin[SRE Admin] -->|CLI| AWS[AWS: xfusion-kp]
    Admin -->|CLI| Azure[Azure: devops-kp]
    Admin -->|Terraform| TF[Terraform Engine]
    
    TF -->|Generates| TLS[RSA Key]
    TLS -->|Uploads Public Key| AWS_TF[AWS: devops-kp]
    TLS -->|Saves Private Key| Local[Local .pem File]

    subgraph "Linux Hardening"
        User1[James: /sbin/nologin]
        User2[Anita: UID 1743]
    end
