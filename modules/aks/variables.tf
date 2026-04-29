variable "name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "The Azure region where the AKS cluster will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix used to create the FQDN for this AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The initial number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The VM size for nodes in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "subnet_id" {
  description = "The resource ID of the subnet to deploy AKS nodes into"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
