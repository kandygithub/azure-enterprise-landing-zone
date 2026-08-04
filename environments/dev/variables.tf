variable "resource_group_name" {
  description = "Name of the Resource Group for DEV environment"
  type        = string
}

variable "location" {
  description = "Azure region for DEV environment"
  type        = string
}
variable "vnet_name" {
  description = "Virtual Network name for DEV"
  type        = string
}

variable "address_space" {
  description = "Address space for DEV Virtual Network"
  type        = list(string)
}
variable "subnet_name" {
  description = "Subnet name for DEV"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the DEV subnet"
  type        = list(string)
}
variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}