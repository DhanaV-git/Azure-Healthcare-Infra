# Databricks notebook: ingest_data.py
# Description: Ingest patient data from Azure Blob Storage

from pyspark.sql.functions import col

# Replace with your actual path
file_path = "dbfs:/mnt/healthcare/raw/patients.csv"

# Read CSV
df = spark.read.option("header", True).csv(file_path)

# Basic data cleaning
df_clean = df.dropna(subset=["patient_id"]).withColumnRenamed("dob", "date_of_birth")

# Save to Delta Lake
df_clean.write.format("delta").mode("overwrite").save("/mnt/healthcare/processed/patients")
