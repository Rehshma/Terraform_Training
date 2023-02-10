provider "azurerm" {
  features {}
  alias = "Azure"
}

resource "azurerm_resource_group" "sample" {
    provider = azurerm.Azure
    name = "Azure_Sample"
    location = "East US"
}


