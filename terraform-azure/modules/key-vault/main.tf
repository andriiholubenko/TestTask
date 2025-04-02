resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = false

access_policy {
  tenant_id = var.tenant_id
  object_id = var.object_id
  secret_permissions = [
    "Get",
    "Set",
    "Delete",
    "List"
  ]
}
}

output "key_vault_id" {
  value       = azurerm_key_vault.kv.id
  description = "The ID of the created Azure Key Vault"
}
