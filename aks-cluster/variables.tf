variable "resource_group_name" {
  type        = string
  description = "resource group name"
  default     = "aks-rg"
}

variable "location" {
  type        = string
  description = "location of the resource group"
  default     = "westeurope"
}

variable "cluster_name" {
  type        = string
  description = "cluster name"
  default     = "aks-cluster"
}

variable "node_count" {
  type        = number
  description = "number of nodes in the cluster"
  default     = 2
}
