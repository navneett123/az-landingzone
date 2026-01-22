
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg-tf-dev" {
  name = var.resource_group_name
}





