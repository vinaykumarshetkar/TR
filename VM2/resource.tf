terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.77"
    }
  }

backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatevinay001"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
      use_azuread_auth     = true
  }
}
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "testRG" {
  name     = "testRG"
}

data "azurerm_virtual_network" "testVnet" {
  name                = "testVnet"
  resource_group_name = data.azurerm_resource_group.testRG.name
}
data "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = data.azurerm_resource_group.testRG.name
  virtual_network_name = data.azurerm_virtual_network.testVnet.name

}
data "azurerm_network_interface" "testNIC" {
  name                = "testNIC"
  resource_group_name = data.azurerm_resource_group.testRG.name
}

