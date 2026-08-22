resource_group_name = "rg-dev-centralindia"
location            = "Central India"
vnet_name           = "vnet-dev-centralindia"
address_space       = ["10.0.0.0/16"]
subnet_name         = "subnet-dev-app"

subnet_address_prefixes = [
  "10.0.1.0/24"
]
nsg_name       = "nsg-dev-app"
nic_name       = "nic-dev-app"
vm_name        = "vm-dev-app"
vm_size        = "Standard_B2als_v2"
admin_username = "azureuser"
public_ip_name = "pip-dev-app"
