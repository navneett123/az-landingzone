
data "azurerm_resource_group" "rg-tf-dev" {
  name = var.resource_group_name
}


module "storage_account" {
  source = "../../modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = var.tags
}


module "virutal_network" {

  source              = "../../modules/vnet"
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space

}


module "subnet" {
  source               = "../../modules/subnet"
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}

