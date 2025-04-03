variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The Azure region for deployment"
}

variable "publisher_name" {
  type        = string
  description = "Name of the API publisher"
  default     = "Healthcare IT"
}

variable "publisher_email" {
  type        = string
  description = "Email address of the API publisher"
  default     = "admin@healthcare.org"
}
