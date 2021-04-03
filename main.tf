terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
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