# Cloud-Multicloud

## Overview
This repository contains materials and projects related to CLOD 2007 - Cloud and Multi-cloud Computing. The project focuses on implementing and understanding cloud computing concepts across multiple cloud platforms, specifically demonstrating VM deployment across AWS, Azure, and GCP using Terraform.

## Table of Contents
- [Cloud-Multicloud](#cloud-multicloud)
  - [Overview](#overview)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Project Structure](#project-structure)
  - [Getting Started](#getting-started)
  - [Infrastructure Components](#infrastructure-components)
    - [AWS Infrastructure](#aws-infrastructure)
    - [Azure Infrastructure](#azure-infrastructure)
    - [GCP Infrastructure](#gcp-infrastructure)
  - [Technologies Used](#technologies-used)
  - [Setup Instructions](#setup-instructions)
  - [Deployment Verification](#deployment-verification)
    - [AWS Deployment Verification](#aws-deployment-verification)
      - [1. Terraform Apply Output](#1-terraform-apply-output)
      - [2. AWS Console - VM Details](#2-aws-console---vm-details)
      - [3. SSH Connection Test](#3-ssh-connection-test)
    - [Azure Deployment Verification](#azure-deployment-verification)
      - [1. Terraform Apply Output](#1-terraform-apply-output-1)
      - [2. Azure Portal - VM Details](#2-azure-portal---vm-details)
      - [3. SSH Connection Test](#3-ssh-connection-test-1)
    - [GCP Deployment Verification](#gcp-deployment-verification)
      - [1. Terraform Apply Output](#1-terraform-apply-output-2)
      - [2. GCP Console - VM Details](#2-gcp-console---vm-details)
      - [3. SSH Connection Test](#3-ssh-connection-test-2)

## Prerequisites
- Basic understanding of cloud computing concepts
- Accounts on major cloud platforms:
  - AWS (Amazon Web Services)
  - Microsoft Azure
  - Google Cloud Platform (GCP)
- Required software:
  - Git
  - Terminal/Command Line Interface
  - VS Code
  - Terraform CLI (version 1.0 or later)
  - Cloud provider CLIs:
    - AWS CLI (version 2.0 or later)
    - Azure CLI (az)
    - Google Cloud SDK (gcloud)

## Project Structure
```
Cloud-Multicloud/
├── multicloud-terraform-vm/           # Multi-cloud VM deployment with Terraform
│   ├── aws/                          # AWS-specific Terraform configurations
│   │   ├── main.tf                   # Main AWS infrastructure configuration
│   │   ├── variables.tf              # AWS variable definitions
│   │   ├── outputs.tf                # AWS output definitions
│   │   └── terraform.tfstate         # Terraform state file for AWS
│   ├── azure/                        # Azure-specific Terraform configurations
│   │   ├── main.tf                   # Main Azure infrastructure configuration
│   │   ├── variables.tf              # Azure variable definitions
│   │   ├── outputs.tf                # Azure output definitions
│   │   └── terraform.tfstate         # Terraform state file for Azure
│   ├── gcp/                          # GCP-specific Terraform configurations
│   │   ├── main.tf                   # Main GCP infrastructure configuration
│   │   ├── variables.tf              # GCP variable definitions
│   │   ├── terraform.tfvars          # GCP-specific variable values
│   │   ├── outputs.tf                # GCP output definitions
│   │   └── terraform.tfstate         # Terraform state file for GCP
│   ├── shared/                       # Shared Terraform configurations
│   │   ├── backend.tf                # Backend configuration
│   │   └── providers.tf              # Provider configurations
│   ├── terraform.tfvars              # Common variable values for all providers
│   ├── terraMultiCloud.pem           # SSH key pair for AWS EC2 instance
│   └── screenshots/                  # Deployment verification screenshots
│       ├── aws/                      # AWS deployment screenshots
│       ├── azure/                    # Azure deployment screenshots
│       └── gcp/                      # GCP deployment screenshots
├── setup.sh                          # Setup script for environment configuration
├── .vscode/                          # VS Code configuration
└── .gitignore                        # Git ignore rules
```

## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Cloud-Multicloud.git
   cd Cloud-Multicloud
   ```

2. Set up your cloud credentials:
   - Configure AWS credentials using AWS CLI
   - Set up Azure authentication using Azure CLI
   - Configure GCP service account and set up gcloud CLI

3. Run the setup script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## Infrastructure Components

### AWS Infrastructure
- Virtual Machine deployment in AWS EC2
- Networking components (VPC, Subnet, Security Groups)
- Key pair for SSH access
- Associated storage and network interfaces

### Azure Infrastructure
- Azure Virtual Machine deployment
- Virtual Network and Subnet configuration
- Network Security Groups
- Resource Group management
- Storage accounts and disks

### GCP Infrastructure
- Google Compute Engine VM instance
- VPC Network configuration
- Firewall rules
- Service account configuration
- Storage configuration

## Technologies Used
- **Cloud Platforms**
  - Amazon Web Services (AWS)
  - Microsoft Azure
  - Google Cloud Platform (GCP)
- **Infrastructure as Code**
  - Terraform
    - AWS Provider
    - Azure Provider
    - Google Provider

## Setup Instructions
1. **Cloud Platform Setup**
   - AWS: Configure AWS CLI and credentials
     ```bash
     aws configure
     ```
   - Azure: Install Azure CLI and login
     ```bash
     az login
     ```
   - GCP: Set up gcloud CLI and authentication
     ```bash
     gcloud auth application-default login
     ```

2. **Development Environment**
   - Install VS Code
   - Install Terraform
   - Configure cloud provider SDKs
   - Set up local development environment

3. **Project Configuration**
   - Navigate to the respective cloud provider directory
   - Initialize Terraform workspace:
     ```bash
     cd multicloud-terraform-vm/<provider>
     terraform init
     terraform plan
     terraform apply
     ```
   - Verify deployment using the cloud provider's console
   - Document deployment with screenshots in the screenshots directory

## Deployment Verification

### AWS Deployment Verification
The following screenshots demonstrate successful deployment in AWS:

#### 1. Terraform Apply Output
![AWS Terraform Apply](multicloud-terraform-vm/screenshots/aws/terraform%20apply.png)
*Successful terraform apply showing resource creation in AWS*

#### 2. AWS Console - VM Details
![AWS Console VM Details](multicloud-terraform-vm/screenshots/aws/Cloud%20console%20showing%20VM%20details.png)
*AWS Console showing the deployed EC2 instance details*

#### 3. SSH Connection Test
![AWS SSH Connection](multicloud-terraform-vm/screenshots/aws/Public%20IP%20SSH.png)
*Successful SSH connection to the AWS EC2 instance*

### Azure Deployment Verification
The following screenshots demonstrate successful deployment in Azure:

#### 1. Terraform Apply Output
![Azure Terraform Apply](multicloud-terraform-vm/screenshots/azure/terraform%20apply.png)
*Successful terraform apply showing resource creation in Azure*

#### 2. Azure Portal - VM Details
![Azure Portal VM Details](multicloud-terraform-vm/screenshots/azure/Cloud%20console%20showing%20VM%20details.png)
*Azure Portal showing the deployed VM details*

#### 3. SSH Connection Test
![Azure SSH Connection](multicloud-terraform-vm/screenshots/azure/SSH%20screenshot.png)
*Successful SSH connection to the Azure VM*

### GCP Deployment Verification
The following screenshots demonstrate successful deployment in GCP:

#### 1. Terraform Apply Output
![GCP Terraform Apply](multicloud-terraform-vm/screenshots/gcp/terraform%20apply.png)
*Successful terraform apply showing resource creation in GCP*

#### 2. GCP Console - VM Details
![GCP Console VM Details](multicloud-terraform-vm/screenshots/gcp/GCP%20cloud%20console%20VM.png)
*Google Cloud Console showing the deployed VM instance details*

#### 3. SSH Connection Test
![GCP SSH Connection](multicloud-terraform-vm/screenshots/gcp/SSH%20.png)
*Successful SSH connection to the GCP VM instance*

Each set of screenshots verifies:
1. Successful Terraform deployment
2. Resource creation in the respective cloud console
3. SSH connectivity to the deployed VM

These verifications confirm that the infrastructure has been properly deployed and is accessible across all three cloud providers.