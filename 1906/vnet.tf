resource "azurerm_virtual_network" "name" {
    location = data.azurerm_resource_group.rg
    name = vnet
    resource_group_name = data.azurerm_resource_group.rg
  address_space = ["10.0.0.0/10"]
    
}