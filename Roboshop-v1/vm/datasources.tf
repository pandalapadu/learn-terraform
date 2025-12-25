data "azurerm_resource_group" "example" {
  name = "eCommerce"
}
data "azurerm_subnet" "example" {
  name                 = "default"
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = "vNET-eCommerce"
}
