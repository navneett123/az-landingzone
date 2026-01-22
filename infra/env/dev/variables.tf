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
  type        = string
}