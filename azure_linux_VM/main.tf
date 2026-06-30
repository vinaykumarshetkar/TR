terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "vinay" {
  name = "vinay"
}

data "azurerm_virtual_machine" "VM" {
  name                = "linux"
  resource_group_name = data.azurerm_resource_group.vinay.name
}
# Subnet
data "azurerm_subnet" "subnet" {
  name                 = "default" # Change if different
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.vinay.name
}

# Public IP
data "azurerm_public_ip" "pip" {
  name                = "linux-ip" # Change to your Public IP name
  resource_group_name = data.azurerm_resource_group.vinay.name
}
data "azurerm_virtual_network" "vnet" {
  name                = "YOUR_VNET_NAME"
  resource_group_name = data.azurerm_resource_group.vinay.name
}

# Network Interface
data "azurerm_network_interface" "nic" {
  name                = "linux899" # Change to your NIC name
  resource_group_name = data.azurerm_resource_group.vinay.name
}

output "id" {
  value = data.azurerm_resource_group.vinay.id
}
output "VM_details" {
  value = {
    public_ip_address = data.azurerm_virtual_machine.VM.public_ip_address
    name              = data.azurerm_virtual_machine.VM.name
    location          = data.azurerm_virtual_machine.VM.location
    nic               = data.azurerm_network_interface.nic
    pip               = data.azurerm_public_ip.pip
    subnet            = data.azurerm_subnet.subnet
  }
}