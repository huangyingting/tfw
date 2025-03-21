variable "name" {
  description = "The name of the resource group will be created"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource group."
  type        = map(string)
}