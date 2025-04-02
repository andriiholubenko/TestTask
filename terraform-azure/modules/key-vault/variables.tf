variable "kv_name" {
  type        = string
  description = "The name of the Azure Key Vault"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where Key Vault will be created"
}

variable "location" {
  type        = string
  description = "Azure region for the Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "object_id" {
  type        = string
  description = "Object ID for the access policy - SP"
}
