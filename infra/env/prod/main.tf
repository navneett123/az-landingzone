provider "azurerm" {
  features {}
}

module "rg" {
  source   = "../../modules/resource-group"
  name     = "rg-landingzone-prod"
  location = var.location
}

module "vnet" {
  source              = "../../modules/vnet"
  name                = "vnet-prod"
  location            = var.location
  resource_group_name = module.rg.name
  address_space       = ["10.1.0.0/16"]
}
