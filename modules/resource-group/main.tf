resource "azurerm_resource_group" "ca_rg" {
  name     = var.name
  location = var.location
}