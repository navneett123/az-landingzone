
provider "azurerm" {
  features {}
}

module "rg" {
  source   = "../../modules/resource-group"
  name     = "rg-landingzone-dev"
  location = var.location
}

module "vnet" {
  source              = "../../modules/vnet"
  name                = "vnet-dev"
  location            = var.location
  resource_group_name = module.rg.name
  address_space       = ["10.0.0.0/16"]
}
