provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "dev-vnet"
  subnet_name         = "dev-subnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

module "linux_vm" {
  source              = "../../modules/linux-vm"
  name                = "dev-linux-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  subnet_id           = module.network.subnet_id
  ssh_public_key      = file("~/.ssh/id_rsa.pub")
}