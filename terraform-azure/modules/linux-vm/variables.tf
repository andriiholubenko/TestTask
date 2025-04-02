variable "name" {
  type        = string
  description = "The name of the virtual machine (also used for NIC, public IP, and NSG)"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which all resources will be created"
}

variable "location" {
  type        = string
  description = "Azure region for resource deployment (e.g., westeurope)"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to which the virtual machine will be connected"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "The size/sku of the virtual machine"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username used to log in to the VM"
}

variable "key_vault_id" {
  type        = string
  description = "Azure Key Vault ID where the private key will be stored"
}
