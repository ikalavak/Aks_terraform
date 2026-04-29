terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "REPLACE_WITH_PROD_SA_NAME"
    container_name       = "tfstate"
    key                  = "prod/terraform.tfstate"
  }
}
