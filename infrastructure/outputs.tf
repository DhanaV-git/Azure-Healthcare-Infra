output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "sql_server_name" {
  value = module.sql.sql_server_name
}

output "databricks_workspace_url" {
  value = module.databricks.workspace_url
}

output "apim_gateway_url" {
  value = module.apim.apim_gateway_url
}
