# General Variables
variable "generic_string" {
  type    = any
  default = "example_value"
}
variable "generic_number" {
  type    = any
  default = 42
}
variable "generic_boolean" {
  type    = any
  default = false
}

# Number Variables
variable "multiplier" {
  type    = number
  default = 5
}
variable "increment" {
  type    = number
  default = 10
}

# String Variables
variable "long_text" {
  type    = string
  default = "This is a sample text for demonstration purposes."
}
variable "short_code" {
  type    = string
  default = "abc"
}
variable "test_string" {
  type    = string
  default = "test_value"
}

# Boolean Variables
variable "is_enabled" {
  type    = bool
  default = true
}
variable "is_disabled" {
  type    = bool
  default = false
}

# List Variables
variable "alphabet_list" {
  type    = list(string)
  default = ["a", "b", "c", "d", "e", "f"]
}
variable "regions_list" {
  type    = list(string)
  default = ["us-west", "us-east", "asia-south"]
}
variable "fibonacci_numbers" {
  type    = list(number)
  default = [1, 1, 2, 3, 5, 8, 13, 21]
}

# Set Variables
variable "unique_alphabet_set" {
  type    = set(string)
  default = ["a", "b", "c", "d", "e", "f"]
}
variable "unique_regions_set" {
  type    = set(string)
  default = ["us-west", "us-east", "asia-south"]
}
variable "unique_fibonacci_set" {
  type    = set(number)
  default = [1, 2, 3, 5, 8, 13, 21]
}

# Tuple Variables
variable "mixed_tuple" {
  type    = tuple([string, number, string, number, string, number])
  default = ["alpha", 1, "beta", 2, "gamma", 3]
}
variable "region_status_tuple" {
  type    = tuple([string, bool, string, bool, number, string])
  default = ["us-west", true, "us-east", false, 100, "asia-south"]
}

# Map Variables
variable "protocol_to_port_map" {
  type = map(string)
  default = {
    HTTP : "80",
    HTTPS : "443",
    FTP : "21",
    SSH : "22"
  }
}

# Object Variables
variable "key_vault_access_policy" {
  type = object({
    object_id         = string,
    secret_permission = string,
    key_permission    = string
  })
  default = {
    object_id         = "object_id",
    secret_permission = "read"
    key_permission    = "write"
  }
}

# Complex Variables
variable "key_vault_access_policies" {
  type = set(
    object({
      object_id          = string,
      secret_permissions = set(string),
      key_permissions    = set(string)
    })
  )
  default = [
    {
      object_id          = "object_id_1",
      secret_permissions = ["read", "write"],
      key_permissions    = ["read"]
    },
    {
      object_id          = "object_id_2",
      secret_permissions = ["read", "delete"],
      key_permissions    = ["write", "delete"]
    }
  ]
}
