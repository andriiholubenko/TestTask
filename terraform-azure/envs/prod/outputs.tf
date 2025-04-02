output "vm_private_key" {
  value       = module.linux_vm.vm_private_key
  description = "The private key from the VM module"
  sensitive   = true
}

output "public_ip_address" {
  value       = module.linux_vm.public_ip_address
  description = "The public IP address of the VM"
}
