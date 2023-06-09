resource_group_name        = "NSG-Test"
location                   = "central India"
virtual_network            = "NSG-Vnet"
vnet_address_space         = ["10.0.0.0/16"]
subnet_name                = "subnet1"
subnet_prefix              = ["10.0.0.0/24"]
network_interface_name     = "test-nic"
ip_name                    = "siva-ip"
nsg_name                   = "interfacensg"
subnetnsg_name             = "subnetnsg"
linux_virtual_machine_name = "test-vm"
vm_size                    = "Standard_DS1_v2"
os_disk                    = "Boomi-NFS-OS-Disk"
disk_caching               = "ReadWrite"
storage_name               = "sivakrishnateststorage"
