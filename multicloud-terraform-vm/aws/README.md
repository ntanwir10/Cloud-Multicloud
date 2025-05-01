# 🟦 AWS Free Tier VM - Terraform

This module provisions a **t2.micro EC2 instance** using Terraform on AWS, configured for **Free Tier usage**.

---

## 🔧 Pre-requisites

- AWS account with Free Tier access
- Existing SSH Key Pair in the selected region
- AWS CLI configured (`aws configure`)

---

## 📦 Setup

### 1. Configure Variables

Update the `key_name` in `terraform.tfvars` or provide during execution.

### 2. Initialize Terraform

```bash
terraform init
