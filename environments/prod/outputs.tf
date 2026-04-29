output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.rg.name
}

output "vnet_id" {
  description = "The resource ID of the virtual network"
  value       = module.vnet.vnet_id
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = module.aks.cluster_name
}

output "aks_cluster_id" {
  description = "The resource ID of the AKS cluster"
  value       = module.aks.cluster_id
}

output "kube_config" {
  description = "The raw kubeconfig for connecting to the AKS cluster"
  value       = module.aks.kube_config_raw
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the Terraform state storage account"
  value       = module.storage.storage_account_name
}
