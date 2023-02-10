resource "azurerm_resource_group" "example_1" {
  name     = "Azure_Resource"
  location = "East US"
}

resource "azurerm_storage_account" "storage_1" {
  name                     = "storageaccountazure1"
  resource_group_name      = azurerm_resource_group.example_1.name
  location                 = azurerm_resource_group.example_1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    id = "first-sa"
  }
}

  resource "azurerm_storage_account" "storage_2" {
  name                     = "storageaccountazure2"
  resource_group_name      = azurerm_resource_group.example_1.name
  location                 = azurerm_resource_group.example_1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    id = "second-sa"
  }
  }