variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to be created"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}

variable "sql_admin_user" {
  type        = string
  description = "Admin username for SQL Server"
}

variable "sql_admin_password" {
  type        = string
  description = "Admin password for SQL Server"
  sensitive   = true
}
