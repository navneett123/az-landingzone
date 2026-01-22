
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg-tf-dev" {
  name = var.resource_group_name
}



esource "azurerm_storage_account" "sa" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg-tf-dev.name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version          = "TLS1_2"
  allow_blob_public_access = false

  tags = var.tags
}

