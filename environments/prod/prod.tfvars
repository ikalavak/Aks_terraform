prefix      = "bootcamp"
environment = "prod"
location    = "East US"

vnet_address_space  = ["10.1.0.0/16"]
aks_subnet_prefixes = ["10.1.1.0/24"]

aks_node_count = 2
aks_vm_size    = "Standard_DS2_v2"

# Must be globally unique: 3-24 lowercase alphanumeric characters, no hyphens
storage_account_name = "bootcampprodtfstate001"

tags = {
  Environment = "prod"
  Project     = "bootcamp2"
  ManagedBy   = "Terraform"
}
