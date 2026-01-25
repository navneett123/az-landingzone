
data "azurerm_resource_group" "rg_tf_dev" {
  name = var.resource_group_name
}


module "storage_account" {
  source = "../../modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = data.azurerm_resource_group.rg_tf_dev.name
  location             = var.location
  tags                 = var.tags
}


module "virutal_network" {

  source              = "../../modules/vnet"
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.rg_tf_dev.name
  location            = var.location
  address_space       = var.address_space

}


module "subnet" {
  source               = "../../modules/subnet"
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_resource_group.rg_tf_dev.name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes
}


module "nsg" {
  source              = "../../modules/nsg"
  name                = "${var.vm_name}-nsg"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg_tf_dev.name
}



module "public_ip" {
  source              = "../../modules/pip"
  name                = "${var.vm_name}-pip"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg_tf_dev.name
}


module "vm" {
  source = "../../modules/vm-linux"

  name                = var.vm_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rg_tf_dev.name
  subnet_id           = module.subnet.id

  admin_username = var.admin_username
  ssh_public_key = file(pathexpand(var.ssh_public_key_path))

  public_ip_id = module.public_ip.id
  nsg_id       = module.nsg.id
}
