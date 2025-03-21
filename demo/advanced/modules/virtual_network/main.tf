resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each            = var.subnet_prefixes
  name                = each.key
  resource_group_name = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes    = [each.value]
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
