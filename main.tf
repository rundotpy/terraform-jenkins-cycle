terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name = ""
    azurerm_storage_account = ""
    container_name = ""
    key =""
    
    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group.
resource "azurerm_resource_group" "create_rg_in_east_us" {
  name     = "sample-rg"
  location = "East US"
}

# Create a storage account
resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.create_rg_in_east_us.name
  location                 = azurerm_resource_group.create_rg_in_east_us.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}