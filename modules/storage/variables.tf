variable "name" {
  description = "The name of the storage account. Must be globally unique, 3-24 lowercase alphanumeric characters"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account"
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Accepted values are Standard and Premium"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account. Accepted values are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the blob container to create within the storage account"
  type        = string
  default     = "tfstate"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
