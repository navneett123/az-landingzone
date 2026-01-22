
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg-tf-dev" {
  name = var.resource_group_name
}


module "storage_account" {
  source = "../../modules/storage-account"

  name                 = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = var.tags
}

