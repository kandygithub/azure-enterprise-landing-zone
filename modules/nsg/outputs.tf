output "nsg_name" {
    description = "Network Security Group Name"
    value = azure_network_security_group.nsg.name
}
 output  "nsg_id" {
    description = "Network Security Group ID"
    value = azure_network_security_group.nsg.id
 }
 