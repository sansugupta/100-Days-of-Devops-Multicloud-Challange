# ☁️ 100 Days of Cloud: The SRE Perspective

[![KodeKloud](https://img.shields.io/badge/Challange-KodeKloud-blue?style=for-the-badge&logo=kubernetes)](https://kodekloud.com/)
[![Status](https://img.shields.io/badge/Status-In%20Progress-orange?style=for-the-badge)]()
[![Role](https://img.shields.io/badge/Perspective-Senior%20SRE-red?style=for-the-badge)]()

## 📖 About This Repository

This is not just a collection of completed labs. It is a **technical journal** documenting my journey through the [KodeKloud 100 Days of Cloud](https://kodekloud.com/100-days-of-cloud) challenge.

As a **Senior Site Reliability Engineer (SRE)** with experience in eBPF, multi-region Kubernetes, and large-scale cloud architecture, I am approaching these tasks with a **production-first mindset**.

For every task, I ask:
> *"How would I implement this in a regulated enterprise environment serving 1M+ users?"*

## 🏗️ The "SRE Lens"
In this repository, you will not find simple "click-ops" solutions. Instead, I focus on:

*   **Infrastructure as Code:** Replacing manual CLI commands with **Terraform** and **Ansible**.
*   **Security Hardening:** Implementing Least Privilege, strict IAM roles, and OS-level hardening (SELinux, non-interactive shells).
*   **Automation:** Scripting verification steps and repetitive tasks.
*   **Architectural Trade-offs:** Analyzing *why* we choose a specific resource (e.g., SSM vs. SSH, NLB vs. ALB).

## 🛠️ Technology Stack

| Domain | Technologies |
| :--- | :--- |
| **Cloud Providers** | ![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazon-aws&logoColor=white) ![Azure](https://img.shields.io/badge/Azure-0078D4?style=flat-square&logo=microsoft-azure&logoColor=white) |
| **Orchestration** | ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white) ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) |
| **IaC & Config** | ![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white) ![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=flat-square&logo=ansible&logoColor=white) |
| **OS & Scripting** | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black) ![Bash](https://img.shields.io/badge/Shell_Scripting-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white) |

## 📂 Repository Structure

Each day is isolated into its own directory containing the **Task Documentation**, **Source Code**, and **Architecture Diagrams**.

```text
100-days-of-cloud/
│
├── Day-01-hybrid-cloud-identity/    <-- Multi-Cloud Identity & Linux Hardening
│   ├── terraform/                   <-- IaC Implementations
│   ├── screenshots/                 <-- Proof of Execution
│   └── README.md                    <-- Detailed SRE Analysis
│
├── Day-02-.../
│
└── README.md                        <-- Working On it.
