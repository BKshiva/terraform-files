# Create network interface
resource "azurerm_network_interface" "nic" {
  name                          = var.network_interface_name
  location                      = azurerm_resource_group.rg.location
  resource_group_name           = azurerm_resource_group.rg.name
  enable_accelerated_networking = "true"

  ip_configuration {
    name                          = var.ip_name
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }

}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# Create virtual machine
resource "azurerm_linux_virtual_machine" "linuxvm" {
  name                = var.linux_virtual_machine_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  network_interface_ids           = [azurerm_network_interface.nic.id]
  size                            = var.vm_size
  disable_password_authentication = false
  allow_extension_operations      = true
  admin_username                  = "siva"
  admin_password                  = "India@123456"
  provision_vm_agent              = true



  os_disk {
    name                 = var.os_disk
    caching              = var.disk_caching
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }



  identity {
    type = "SystemAssigned"
  }


}
