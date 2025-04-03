#!/bin/bash

# Upload Databricks notebooks to workspace
# Requires `databricks-cli` to be installed and configured

WORKSPACE_PATH="/Shared/notebooks"
LOCAL_PATH="../notebooks"

echo "Uploading notebooks from $LOCAL_PATH to $WORKSPACE_PATH..."

databricks workspace import_dir "$LOCAL_PATH" "$WORKSPACE_PATH" --overwrite

if [ $? -eq 0 ]; then
  echo "✅ Notebooks uploaded successfully."
else
  echo "❌ Failed to upload notebooks."
  exit 1
fi
