variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}
variable "location" {
  description = "Azure region"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}
variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the Virtual Machine"
  type        = string
}

variable "network_interface_id" {
  description = "ID of the Network Interface"
  type        = string
}

variable "admin_ssh_public_key" {
  description = "SSH public key for the administrator"
  type        = string
}

