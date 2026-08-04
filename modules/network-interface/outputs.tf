output "nic_id" {
  description = "ID of the network interface"
  value       = azurerm_network_interface.nic.id
}
output "private_ip_address" {
  description = "Private IP address of the network interface"
  value       = azurerm_network_interface.nic.private_ip_address
}