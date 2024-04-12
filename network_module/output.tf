output "resource_group_name" {
  value = azurerm_resource_group.project_group.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.project_vnet.name
}

output "prod_subnet_id" {
  value = azurerm_subnet.prod_subnet.id
}

output "test_subnet_id" {
  value = azurerm_subnet.test_subnet.id
}

output "dev_subnet_id" {
  value = azurerm_subnet.dev_subnet.id
}

output "admin_subnet_id" {
  value = azurerm_subnet.admin_subnet.id
}
