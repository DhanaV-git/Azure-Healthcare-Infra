# 🔧 Scripts

This folder contains helper scripts for automating infrastructure and analytics workflows.

## Included Scripts

| File                    | Purpose                                             |
|-------------------------|-----------------------------------------------------|
| `upload-notebooks.sh`   | Uploads local Databricks notebooks to workspace     |

## Requirements

- [Databricks CLI](https://docs.databricks.com/dev-tools/cli/index.html)
- Personal Access Token (PAT)
- `databricks configure --token` setup completed

## Usage

```bash
bash upload-notebooks.sh
