terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "af504235-2f6d-4469-aa25-251f498730fc"
}
resource "null_resource" "demo" {
  count = length(var.demo)
}
resource "null_resource" "demo" {
  default = [
    "apple",
    "banan"
    ]
}