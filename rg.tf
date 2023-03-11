resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

#resource "azurerm_resource_group" "new-RG" {
#  name     = "new-RG"
#  location = "East US"
#}