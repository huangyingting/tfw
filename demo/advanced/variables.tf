variable "prefix" {
  type        = string
  description = "Prefix to use for all resources."
  nullable    = false
  validation {
    condition     = length(var.prefix) > 2
    error_message = "The prefix value must be at least 3 characters long."
  }
}

variable "location" {
  type        = string
  description = "The location where the resources will be created."
}

variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = var.environment == "dev" || var.environment == "prod" || var.environment == "test"
    error_message = "The environment value must be one of 'dev', 'prod', or 'test'."
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
}

variable "shared_subscription_id" {
  description = "The subscription ID for the shared services."
  type        = string
}

variable "shared_rg_name" {
  description = "The name of the shared resource group."
  type        = string
}

variable "shared_sa_name" {
  description = "The name of the shared storage account."
  type        = string
}
