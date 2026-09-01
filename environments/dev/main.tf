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
  public_ip_id        = var.enable_vm ? module.public_ip[0].public_ip_id : null
}
module "linux_vm" {
  source = "../../modules/linux-vm"
  count  = var.enable_vm ? 1 : 0

  vm_name              = var.vm_name
  location             = var.location
  resource_group_name  = module.resource_group.resource_group_name
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  network_interface_id = module.network_interface.nic_id

  admin_ssh_public_key = file(pathexpand("~/.ssh/id_ed25519.pub"))
}
module "public_ip" {
  source = "../../modules/public-ip"
  count  = var.enable_vm ? 1 : 0

  public_ip_name      = var.public_ip_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
}
module "storage_account" {
  source = "../../modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
}
