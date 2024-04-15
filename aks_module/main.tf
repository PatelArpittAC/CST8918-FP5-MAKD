provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "test_cluster" {
  name                = "test-cluster"
  location            = "Canada Central"
  resource_group_name = "cst8918-final-project-group-5"
  dns_prefix          = "test-cluster"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  kubernetes_version = "1.29.2"
}

resource "azurerm_kubernetes_cluster" "prod_cluster" {
  name                = "prod-cluster"
  location            = "Canada Central"
  resource_group_name = "cst8918-final-project-group-5"
  dns_prefix          = "prod-cluster"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
    min_count  = 1
    max_count  = 3

    enable_auto_scaling = true
  }

  kubernetes_version = "1.29.2"
}