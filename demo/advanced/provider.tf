provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "shared"
  subscription_id = var.shared_subscription_id
  features {}
}
