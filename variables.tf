variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}
variable "location" {
  type        = string
  description = "Resources location in Azure"
}
variable "virtual_network" {
  type        = string
  description = "virtual Network Name"
}
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space used by the vnet"
}

variable "subnet_prefix" {
  type        = list(string)
  description = "Address space used by the subnet in vnet"
}

variable "subnet_name" {
  type        = string
  description = "subnet Name"
}

variable "network_interface_name" {
  type        = string
  description = "nic"
}

variable "ip_name" {
  type        = string
  description = "nic name"
}

variable "nsg_name" {
  type        = string
  description = "nsg name"
}

variable "subnetnsg_name" {
  type        = string
  description = "nsg name"
}


variable "linux_virtual_machine_name" {
  type        = string
  description = "vm name"
}

variable "vm_size" {
  type        = string
  description = "size of the vm"
}

variable "os_disk" {
  type        = string
  description = "OS Disk of Boomi"
}

variable "disk_caching" {
  type        = string
  description = "DIsk caching Type"
}

variable "storage_name" {
  type        = string
  description = "Name of the storage account"
}









