# Azure Container App Deployment with Terraform

This project provisions a complete Azure setup using Terraform modules:
- Resource Group
- Log Analytics Workspace
- Container App Environment
- Publicly accessible Container App with nginx image

---

## Prerequisites

- Terraform >= 1.5.0
- Azure CLI (`az login`)
- Azure Subscription with rights to deploy resources
- Docker Hub access for public container image

---

## Setup Instructions

1. **Clone the repository** or extract the zip archive.
2. **Login to Azure**:
   ```bash
   az login

## Terraform Deployment Instructions

### 1. Initialize the Terraform working directory
    terraform init

### 2. (Optional) Review the planned changes
    terraform plan -var-file="terraform.tfvars"

### 3. Apply the Terraform configuration to deploy the resources
    terraform apply -var-file="terraform.tfvars"

### 4. (Optional) Destroy all resources
    terraform destroy -var-file="terraform.tfvars"
