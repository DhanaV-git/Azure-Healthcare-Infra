# 🧱 Infrastructure Module

This folder contains the root Terraform configuration used to provision the Azure infrastructure for the Healthcare Cloud Deployment project. It references modular components to keep the setup clean, scalable, and reusable.

---

## 📦 Modules Used

- `resource_group`: Creates a new resource group.
- `network`: Provisions a virtual network and default subnet.
- `sql`: Deploys Azure SQL Server and Database.
- `databricks`: Deploys an Azure Databricks Workspace.
- `apim`: Deploys Azure API Management instance.

---

## 🔧 Setup Instructions

### 1. Prerequisites

- [Terraform >= 1.5.x](https://www.terraform.io/downloads.html)
- Azure CLI installed and authenticated (`az login`)
- Azure subscription with necessary IAM permissions

### 2. Configure Terraform Variables

Edit `terraform.tfvars` with your values:

```hcl
resource_group_name = "rg-healthcare"
location            = "East US"
sql_admin_user      = "sqladmin"
sql_admin_password  = "StrongP@ssword123!"
```

> 💡 For production, never hardcode secrets. Use environment variables or a secrets manager.

### 3. Initialize Terraform

```bash
cd infrastructure
terraform init
```

### 4. Plan Terraform Changes

```bash
terraform plan -out=tfplan
```

### 5. Apply Infrastructure Changes

```bash
terraform apply tfplan
```

---

## 📤 Outputs

On successful deployment, you’ll receive:

- Resource Group name
- SQL Server name
- Databricks Workspace URL
- API Management Gateway URL

---

## 📁 File Overview

| File                | Purpose                                         |
|---------------------|--------------------------------------------------|
| `main.tf`           | Calls all modules                                |
| `variables.tf`      | Declares input variables                         |
| `outputs.tf`        | Exports resource information                     |
| `terraform.tfvars`  | Stores actual values for input variables         |

---

## ✅ Requirements

- Terraform >= 1.5.x
- Azure CLI (for authentication, optional)
- Azure Subscription with sufficient privileges
