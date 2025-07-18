provider "azurerm" {
  features {}
}

module "aks" {
  source  = "Azure/aks/azurerm"
  version = "8.0.0"

  resource_group_name = var.resource_group_name
  cluster_name        = var.aks_cluster_name
  location            = var.location

  default_node_pool = {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity = {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}
