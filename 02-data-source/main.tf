terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
}
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "example" {
  name = "eCommerce"
}
output "rg" {
  value = data.azurerm_resource_group.example
}