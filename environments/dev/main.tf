module "rg" {
  source = "../../modules/rg"

  name     = "${var.prefix}-${var.environment}-rg"
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source = "../../modules/vnet"

  name                = "${var.prefix}-${var.environment}-vnet"
  location            = module.rg.location
  resource_group_name = module.rg.name
  address_space       = var.vnet_address_space
  subnet_name         = "aks-subnet"
  subnet_prefixes     = var.aks_subnet_prefixes
  tags                = var.tags
}

module "storage" {
  source = "../../modules/storage"

  name                = var.storage_account_name
  resource_group_name = module.rg.name
  location            = module.rg.location
  container_name      = "tfstate"
  tags                = var.tags
}

module "aks" {
  source = "../../modules/aks"

  name                = "${var.prefix}-${var.environment}-aks"
  location            = module.rg.location
  resource_group_name = module.rg.name
  dns_prefix          = "${var.prefix}-${var.environment}"
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
  subnet_id           = module.vnet.subnet_id
  tags                = var.tags
}
