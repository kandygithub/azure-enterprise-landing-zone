resource_group_name = "rg-dev-centralindia"
location            = "Central India"
vnet_name           = "vnet-dev-centralindia"
address_space       = ["10.0.0.0/16"]
subnet_name = "subnet-dev-app"

subnet_address_prefixes = [
  "10.0.1.0/24"
]