locals {
  rg_name     = "${var.prefix}-${var.environment}-rg"
  vnet_name   = "${var.prefix}-${var.environment}-vnet"
  subnet_name = "${var.prefix}-${var.environment}-subnet"
}

module "demo_rg" {
  source   = "./modules/resource_group"
  name     = local.rg_name
  location = var.location
  tags     = var.tags
}

module "demo_vnet" {
  source        = "./modules/virtual_network"
  vnet_name     = local.vnet_name
  address_space = ["10.0.0.0/16"]
  subnet_prefixes = {
    "${local.subnet_name}-1" = "10.0.1.0/24"
    "${local.subnet_name}-2" = "10.0.2.0/24"
  }
  location            = module.demo_rg.location
  resource_group_name = module.demo_rg.name
  tags                = var.tags
}

resource "azurerm_storage_container" "shared" {
  provider              = azurerm.shared
  name                  = "shared"
  storage_account_id    = data.azurerm_storage_account.shared.id
  container_access_type = "private"
}
