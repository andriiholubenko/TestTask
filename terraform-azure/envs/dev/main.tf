provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "key_vault" {
  source              = "../../modules/key-vault"
  kv_name             = "kv-dev-vm"
  resource_group_name = module.resource_group.name
  location            = var.location
  tenant_id           = var.tenant_id
  object_id           = var.object_id
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "dev-vnet"
  subnet_name         = "dev-subnet"
  resource_group_name = module.resource_group.name
  location            = var.location
}

module "linux_vm" {
  source              = "../../modules/linux-vm"
  name                = "dev-linux-vm"
  resource_group_name = module.resource_group.name
  location            = var.location
  subnet_id           = module.network.subnet_id
  key_vault_id        = module.key_vault.key_vault_id
}
