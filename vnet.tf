resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space
  dns_servers         = ["8.8.8.8", "8.8.4.4"]

}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_prefix
  depends_on           = [azurerm_virtual_network.vnet]
}
