# 📓 Databricks Notebooks

This folder contains PySpark notebooks used in the healthcare analytics pipeline.

## Notebooks

| File                      | Description                                      |
|---------------------------|--------------------------------------------------|
| `ingest_data.py`          | Ingests patient data from raw CSV into Delta    |
| `analyze_patient_risk.py` | Categorizes patients into risk levels           |

## Usage

To upload these notebooks into Databricks:

1. Configure your Databricks CLI with a token
2. Run the upload script located in the `scripts/` folder

```bash
bash ../scripts/upload-notebooks.sh
