# 📁 .github Folder

This directory contains GitHub-specific configurations.

## 🔄 Workflows

- **ci-cd.yml**: Automates Terraform plan and apply on every push to the `main` branch using GitHub Actions.
  - Uses secure environment variables via GitHub Secrets
  - Supports modular Terraform setup under the `infrastructure/` directory

## 🔐 Secrets Required

To run the workflow, the following secrets must be configured in the GitHub repository:

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`

These values are used for authenticating Terraform to the Azure backend using a Service Principal.

## 📘 Notes

- This pipeline runs only on the `main` branch to prevent accidental production changes.
- Terraform version is pinned to `1.5.0` for consistency.

