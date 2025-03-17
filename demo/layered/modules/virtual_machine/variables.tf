variable "nic_name" {
  type        = string
  description = "The name of the network interface."
}

variable "public_ip_name" {
  type        = string
  description = "The name of the public IP address."
}

variable "nsg_name" {
  type        = string
  description = "The name of the network security group."
}

variable "vm_name" {
  type        = string
  description = "The name of the virtual machine."
}

variable "username" {
  type        = string
  description = "The username for the virtual machine."
}

variable "ssh_public_key" {
  type        = string
  description = "The SSH public key for the virtual machine."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet."
}

variable "location" {
  type        = string
  description = "The location of the resources."
}

variable "rg_name" {
  type        = string
  description = "The name of the resource group."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
}
