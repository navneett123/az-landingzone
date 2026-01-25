variable "location" {
  type    = string
  default = "East US"
}


variable "resource_group_name" {
  description = "Existing Azure Resources Group Name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
}

variable "subscription_id" {
  description = "Azure subscription_id"
  type        = string
}

variable "storage_account_name" {
  type = string
}


variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}


variable vm_name {
  type = string
}

variable admin_username{
  type  = string
}

variable "ssh_public_key_path"{
  type  = string
}