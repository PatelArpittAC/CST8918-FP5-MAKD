provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "project_group" {
  name     = "cst8918-final-project-group-5"
  location = "East US"
}

resource "azurerm_virtual_network" "project_vnet" {
  name                = "project-vnet"
  address_space       = ["10.0.0.0/14"]
  location            = azurerm_resource_group.project_group.location
  resource_group_name = azurerm_resource_group.project_group.name
}

resource "azurerm_subnet" "prod_subnet" {
  name                 = "prod-subnet"
  resource_group_name  = azurerm_resource_group.project_group.name
  virtual_network_name = azurerm_virtual_network.project_vnet.name
  address_prefixes     = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "test_subnet" {
  name                 = "test-subnet"
  resource_group_name  = azurerm_resource_group.project_group.name
  virtual_network_name = azurerm_virtual_network.project_vnet.name
  address_prefixes     = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "dev_subnet" {
  name                 = "dev-subnet"
  resource_group_name  = azurerm_resource_group.project_group.name
  virtual_network_name = azurerm_virtual_network.project_vnet.name
  address_prefixes     = ["10.2.0.0/16"]
}

resource "azurerm_subnet" "admin_subnet" {
  name                 = "admin-subnet"
  resource_group_name  = azurerm_resource_group.project_group.name
  virtual_network_name = azurerm_virtual_network.project_vnet.name
  address_prefixes     = ["10.3.0.0/16"]
}
