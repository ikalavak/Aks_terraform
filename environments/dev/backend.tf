terraform {
  backend "azurerm" {
    resource_group_name  = "aks-project-rg"
    storage_account_name = "aksprojectstra5aln"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}
