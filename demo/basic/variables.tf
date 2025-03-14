variable "prefix" {
  type        = string
  description = "Prefix to use for all resources."
  nullable = false
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
