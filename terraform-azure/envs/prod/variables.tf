variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "object_id" {
  type = string
}

variable "vm_name" {
  type        = string
  default     = "prod-linux-vm"
  description = "Name of the prod VM"
}

variable "vm_monitoring_name" {
  type        = string
  default     = "vm-monitoring"
  description = "Name of the monitoring VM"
}
