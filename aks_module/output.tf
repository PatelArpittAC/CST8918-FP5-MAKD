output "test_cluster_id" {
  value = azurerm_kubernetes_cluster.test_cluster.id
}

output "prod_cluster_id" {
  value = azurerm_kubernetes_cluster.prod_cluster.id
}
