prefix      = "bootcamp"
environment = "dev"
location    = "West US"

vnet_address_space  = ["10.0.0.0/16"]
aks_subnet_prefixes = ["10.0.1.0/24"]

aks_node_count = 1
aks_vm_size    = "Standard_D2s_v3"

# Must be globally unique: 3-24 lowercase alphanumeric characters, no hyphens
storage_account_name = "bootcampdevtfstate001"

tags = {
  Environment = "dev"
  Project     = "bootcamp2"
  ManagedBy   = "Terraform"
}
