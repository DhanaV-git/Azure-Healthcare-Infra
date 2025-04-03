resource "azurerm_sql_server" "this" {
  name                         = "healthcaresqlserver"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_sql_database" "this" {
  name                             = "healthcaredb"
  resource_group_name              = var.resource_group_name
  location                         = var.location
  server_name                      = azurerm_sql_server.this.name
  requested_service_objective_name = "S0"
}
