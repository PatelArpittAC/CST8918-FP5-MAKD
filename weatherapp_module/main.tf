provider "azurerm" {
  features {}
}
 
# Define Azure Container Registry (ACR)
resource "azurerm_container_registry" "acr" {
  name                = "weatherappacr5"
  resource_group_name = "cst8918-final-project-group-5"
  location            = "East US"
  sku                 = "Basic"
  # Add other ACR configurations as needed
}
 
# Define managed Redis DB (Azure Cache for Redis) for test environment
resource "azurerm_redis_cache" "test_redis" {
  name                = "test-redis-5"
  resource_group_name = "cst8918-final-project-group-5"
  location            = "East US"
  sku_name            = "Basic"
  capacity            = 1
  family              = "C"
}
 
# Define managed Redis DB (Azure Cache for Redis) for production environment
resource "azurerm_redis_cache" "prod_redis" {
  name                = "prod-redis-5"
  resource_group_name = "cst8918-final-project-group-5"
  location            = "East US"
  sku_name            = "Basic"
  capacity            = 1
  family              = "C"
}

# Define Kubernetes deployment and service for the Remix Weather Application
# Add Kubernetes deployment and service configurations