data "azurerm_storage_account" "shared" {
  name                = var.shared_sa_name
  resource_group_name = var.shared_rg_name
  provider            = azurerm.shared
}

data "azurerm_subscription" "current" {}
