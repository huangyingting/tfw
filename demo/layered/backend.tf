terraform {
  backend "azurerm" {
    use_azuread_auth     = true
    resource_group_name  = "TfState"    # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "mltfsseasa" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"    # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "layered.tfstate"
  }
}
