variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
  default     = "aks-resource-group"
}

variable "location" {
  type        = string
  description = "az location"
  default     = "East US"
}

variable "aks_name" {
  type        = string
  description = "name of the aks cluster"
  default     = "aksClusterDev"
}

variable "node_count" {
  type        = number
  description = "number of nodes in the aks cluster"
  default     = 3
}
