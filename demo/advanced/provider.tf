provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azurerm" {
  alias           = "shared"
  subscription_id = var.shared_subscription_id
  features {}
}
