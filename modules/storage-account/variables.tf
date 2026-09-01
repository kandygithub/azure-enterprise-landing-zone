variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where the Storage Account will be created"
  type        = string
}

variable "account_tier" {
  description = "Performance tier of the Storage Account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type for the Storage Account"
  type        = string
  default     = "LRS"
}
