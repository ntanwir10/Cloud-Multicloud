# 🟨 GCP Free Tier VM - Terraform

This module provisions a **f1-micro Ubuntu VM** using Terraform on Google Cloud Platform (GCP), eligible under Free Tier.

---

## 🔧 Pre-requisites

- GCP account with billing enabled
- Enabled Compute Engine API
- Google Cloud CLI (`gcloud`) installed
- SSH key pair available

---

## 📦 Setup

### 1. Authenticate with Google Cloud

```bash
gcloud auth application-default login
