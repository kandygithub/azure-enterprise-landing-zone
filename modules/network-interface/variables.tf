variable "nic_name" {
  description = "Name of the network Interface"
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
variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}