output "public_ip_address" {
  description = "The public IP address assigned to the virtual machine"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_private_key" {
  description = "The private key for accessing the VM"
  value       = tls_private_key.example_ssh.private_key_pem
  sensitive   = true
}
