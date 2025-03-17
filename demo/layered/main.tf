data "terraform_remote_state" "advanced" {
  backend = "azurerm"
  config = {
    use_azuread_auth     = true
    storage_account_name = "mltfsseasa"
    container_name       = "tfstate"
    resource_group_name  = "TfState"
    key                  = "advanced.tfstate"
  }
}

locals {
  rg_name        = data.terraform_remote_state.advanced.outputs.rg_name
  vnet_name      = data.terraform_remote_state.advanced.outputs.vnet_name
  subnet_ids     = data.terraform_remote_state.advanced.outputs.subnet_ids
  nic_name       = "${var.prefix}-${var.environment}-nic"
  public_ip_name = "${var.prefix}-${var.environment}-pip"
  nsg_name       = "${var.prefix}-${var.environment}-nsg"
  vm_name        = "${var.prefix}-${var.environment}-vm"
}

module "demo_vm" {
  source        = "./modules/virtual_machine"
  nic_name      = local.nic_name
  public_ip_name = local.public_ip_name
  nsg_name      = local.nsg_name
  vm_name       = local.vm_name
  username      = var.username
  ssh_public_key = var.ssh_public_key
  subnet_id     = local.subnet_ids[keys(local.subnet_ids)[0]]
  location      = var.location
  rg_name       = local.rg_name
  tags          = var.tags
  depends_on    = [data.terraform_remote_state.advanced]  
}

