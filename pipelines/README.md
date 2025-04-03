# 🛠️ Azure DevOps Pipelines

This folder contains the CI/CD pipeline to deploy Azure infrastructure and Databricks notebooks.

## 🔁 Pipeline Overview

| Stage              | Purpose                                       |
|--------------------|-----------------------------------------------|
| Terraform          | Runs init, plan, and apply for all modules    |
| UploadNotebooks    | Installs Databricks CLI and uploads notebooks |

## ✅ Prerequisites

### Azure DevOps Secrets Required:

- `DATABRICKS_HOST`: e.g., https://adb-xxxxx.azuredatabricks.net
- `DATABRICKS_TOKEN`: Personal Access Token for the workspace

### Tools

- Azure DevOps Pipelines enabled
- Databricks CLI installed on build agent

## 📦 How to Use

1. Create a new pipeline and link it to `azure-pipelines.yml`
2. Define secrets under project settings → Pipelines → Library → Variable group
3. Commit changes to `main` branch to trigger the pipeline

