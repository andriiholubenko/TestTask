output "prod_vm_private_key" {
  value       = module.linux_vm.vm_private_key
  description = "The private key from the VM module"
  sensitive   = true
}

output "prod_public_ip_address" {
  value       = module.linux_vm.public_ip_address
  description = "The public IP address of the VM"
}

output "prod_monitor_vm_private_key" {
  value       = module.monitoring_vm.vm_private_key
  description = "The private key from the monitoring VM module"
  sensitive   = true
}

output "prod_monitor_public_ip_address" {
  value       = module.monitoring_vm.public_ip_address
  description = "The public IP address of the monitoring VM"
}