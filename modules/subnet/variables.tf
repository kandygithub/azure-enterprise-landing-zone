variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "address_prefixes" {
  description = "Subnet Address Prefixes"
  type        = list(string)
}