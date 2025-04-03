# 🏥 Azure Healthcare Infrastructure Deployment

![Terraform](https://img.shields.io/badge/IaC-Terraform-5C4EE5?logo=terraform)
![Azure](https://img.shields.io/badge/Cloud-Azure-0078D7?logo=microsoftazure)
![Databricks](https://img.shields.io/badge/Databricks-Analytics-FF3621?logo=databricks)
![Azure DevOps](https://img.shields.io/badge/CI/CD-AzureDevOps-blue?logo=azuredevops)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

This project provides a complete **Azure-based infrastructure** solution for a healthcare organization. It focuses on **security, scalability, automation**, and **regulatory compliance (e.g., HIPAA)**, enabling the organization to host critical workloads, run analytics, and collaborate securely.

---

## 🚀 Features

- 🏗️ Modular **Terraform** setup for infrastructure-as-code
- 🔐 Secure deployment of **Azure SQL**, **Databricks**, **API Management**
- 📦 Notebook-based **data ingestion and analytics**
- 🔁 CI/CD via **Azure DevOps Pipelines** or **GitHub Actions**
- 📈 Full observability: future-ready for integration with Azure Monitor & Grafana
- 📬 Alerts & reports delivery through **Microsoft Teams & Outlook**

---

## 📂 Folder Structure

```
.
├── .github/               # GitHub Actions CI/CD
├── infrastructure/        # Terraform code (modular)
├── notebooks/             # Databricks notebooks
├── scripts/               # Helper scripts (Databricks CLI)
├── pipelines/             # Azure DevOps pipelines
└── README.md              # Top-level project overview
```

---

## 🔧 Prerequisites

- [Terraform >= 1.5.x](https://www.terraform.io/downloads)
- Azure CLI (`az login`)
- Azure Subscription with permissions to deploy resources
- Databricks Workspace + Personal Access Token
- (Optional) Azure DevOps project or GitHub Actions configured

---

## ⚙️ Setup Instructions

### 1. Clone the Repo

```bash
git clone https://github.com/DhanaV-git/azure-healthcare-infra.git
cd azure-healthcare-infra/infrastructure
```

### 2. Configure Variables

Edit the `terraform.tfvars` file with your values:

```hcl
resource_group_name = "rg-healthcare"
location            = "East US"
sql_admin_user      = "sqladmin"
sql_admin_password  = "StrongP@ssword123!"
```

> 🔐 For secure environments, use environment variables or secret vaults instead.

### 3. Initialize & Apply Terraform

```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

### 4. Upload Notebooks to Databricks

Install and configure the [Databricks CLI](https://docs.databricks.com/dev-tools/cli/index.html), then run:

```bash
cd ../scripts
bash upload-notebooks.sh
```

### 5. Run CI/CD Pipelines (Optional)

You can automate the entire workflow with:

- `.github/workflows/ci-cd.yml` for GitHub Actions
- `pipelines/azure-pipelines.yml` for Azure DevOps

Secrets required:
- `DATABRICKS_HOST`
- `DATABRICKS_TOKEN`

---

## 📘 Documentation Index

| Section               | Link                                           |
|------------------------|------------------------------------------------|
| Infrastructure Setup   | [`infrastructure/README.md`](infrastructure/README.md) |
| Terraform Modules      | [`infrastructure/modules`](infrastructure/modules)       |
| Databricks Notebooks   | [`notebooks/README.md`](notebooks/README.md)           |
| Upload Scripts         | [`scripts/README.md`](scripts/README.md)               |
| Azure DevOps Pipelines | [`pipelines/README.md`](pipelines/README.md)           |

---

## 📌 Tech Stack

- **Azure Resource Manager**
- **Azure SQL**, **Databricks**, **APIM**
- **Terraform (modular IaC)**
- **Azure DevOps Pipelines / GitHub Actions**
- **Python / PySpark** (Databricks notebooks)
- **Microsoft 365** for secure collaboration

---

## 📈 Future Enhancements

- 🔍 Azure Monitor & Grafana integration
- ☁️ Azure Key Vault for secret management
- 🔄 Add Sentinel rules for security insights
- 📊 Extend analytics to include MLflow + AutoML

---

## 📝 License

This project is licensed under the **MIT License**.  
See `LICENSE` for more information.

---

## ✉️ Contact

Created by **Dhana Veeramachaneni**  
For support or inquiries: [dhanalakshmi.vnvudl@gmail.com](mailto:dhanalakshmi.vnvudl@gmail.com)
