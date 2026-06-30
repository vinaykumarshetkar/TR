output "resource_group" {
  value = data.azurerm_resource_group.vinay
}

output "vm" {
  value = data.azurerm_virtual_machine.VM
}

output "vnet" {
  value = data.azurerm_virtual_network.vnet
}

output "subnet" {
  value = data.azurerm_subnet.subnet
}
output "public_ip" {
  value = data.azurerm_public_ip.pip
}

output "network_interface" {
  value = data.azurerm_network_interface.nic
}