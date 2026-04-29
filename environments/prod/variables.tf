variable "prefix" {
  description = "A short prefix used to name all resources in this environment"
  type        = string
}

variable "environment" {
  description = "The environment name (e.g. dev, prod)"
  type        = string
}

variable "location" {
  description = "The Azure region where all resources will be created"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "aks_subnet_prefixes" {
  description = "The address prefixes for the AKS node subnet"
  type        = list(string)
}

variable "aks_node_count" {
  description = "The initial number of nodes in the AKS default node pool"
  type        = number
  default     = 2
}

variable "aks_vm_size" {
  description = "The VM size for nodes in the AKS default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "storage_account_name" {
  description = "The globally unique name for the Terraform state storage account (3-24 lowercase alphanumeric characters)"
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources"
  type        = map(string)
  default     = {}
}
