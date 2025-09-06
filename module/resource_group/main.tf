resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  tags     = merge(var.tags, { module = "resource_group" })
}