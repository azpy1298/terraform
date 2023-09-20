resource "azurerm_resource_group" "basics" {
  name     = var.resource_group_name
  location = var.location
}
