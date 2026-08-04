module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}
module "network" {
  source = "../../modules/network"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.address_space
}
module "subnet" {
  source = "../../modules/subnet"

  subnet_name          = var.subnet_name
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.network.vnet_name
  address_prefixes     = var.subnet_address_prefixes
}
module "nsg" {
  source = "../../modules/nsg"

  nsg_name            = var.nsg_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}
resource "azurerm_subnet_network_security_group_association" "subnet_nsg" {
  subnet_id                 = module.subnet.subnet_id
  network_security_group_id = module.nsg.nsg_id
}
module "network_interface" {
  source              = "../../modules/network-interface"
  nic_name            = var.nic_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.subnet.subnet_id
}
