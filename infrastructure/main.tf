# infrastructure/main.tf

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}

module "sql" {
  source              = "./modules/sql"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  sql_admin_user      = var.sql_admin_user
  sql_admin_password  = var.sql_admin_password
}

module "databricks" {
  source              = "./modules/databricks"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}

module "apim" {
  source              = "./modules/apim"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}
