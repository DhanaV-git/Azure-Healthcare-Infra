variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure region for deployment"
}

variable "sql_admin_user" {
  type        = string
  description = "Administrator username for SQL Server"
}

variable "sql_admin_password" {
  type        = string
  description = "Administrator password for SQL Server"
  sensitive   = true
}
