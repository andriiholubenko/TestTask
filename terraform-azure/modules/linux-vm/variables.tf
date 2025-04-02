variable "name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B1s"
  description = "The sku of the virtual machine"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username"
}

variable "key_vault_id" {
  type        = string
  description = "Azure Key Vault ID"
}
