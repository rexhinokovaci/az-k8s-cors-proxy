variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
  default     = "rg-aks"
}

variable "location" {
  type        = string
  description = "az location"
  default     = "eastus"
}

variable "env" {
  type        = string
  description = "env name"
  default     = "dev"

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

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}