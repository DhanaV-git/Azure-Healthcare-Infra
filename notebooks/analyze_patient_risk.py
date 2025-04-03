# Databricks notebook: analyze_patient_risk.py
# Description: Basic risk stratification model based on conditions

from pyspark.sql.functions import when

df = spark.read.format("delta").load("/mnt/healthcare/processed/patients")

# Add risk category
df = df.withColumn("risk_level", when(col("chronic_conditions") > 3, "High")
                                    .when(col("chronic_conditions") > 1, "Medium")
                                    .otherwise("Low"))

display(df.groupBy("risk_level").count())
