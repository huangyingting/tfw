variable "vnet_name" {
  type        = string
  description = "The name of the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the virtual network."
}

variable "subnet_prefixes" {
  type        = map(string)
  description = "A map of subnet names to their address prefixes."
}

variable "location" {
  type        = string
  description = "The location of the resources."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
}
