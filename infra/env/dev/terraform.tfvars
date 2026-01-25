environment          = "dev"
subscription_id      = "89a2bcbb-a74e-47e4-b0a4-fd0249a3a23b"
location             = "westus3"
storage_account_name = "stgaccountdevtfm"
resource_group_name  = "rg-tf-dev"
vnet_name            = "vnet-dev-tfm"
address_space        = ["10.25.2.0/24"]
address_prefixes     = ["10.25.2.0/26"]
subnet_name          = "sb-dev-tfm"
vm_name              = "my-testvm-tfm"
admin_username       = "azadmin"
ssh_public_key_path  = "/home/navneet/.ssh/id_rsa.pub"
tags = {
  environment = "dev"
  owner       = "navneet"
  project     = "azure-landing-zone"
}
