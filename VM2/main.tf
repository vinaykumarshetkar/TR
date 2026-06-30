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

resource "azurerm_resource_group" "vinay_rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  resource_group_name = var.rg_name
 for_each = toset(var.vnet_name)

  name          = each.key
  location      = var.location
  address_space = var.address
  depends_on    = [azurerm_resource_group.vinay_rg]
}

variable "location" {
  default = "westus"
}

variable "rg_name" {
  default = "VM2_rg"
}

variable "address" {
  default = ["10.0.0.0/16", "10.2.0.0/16"]
  type    = list(string)
}


variable "vnet_name" {
  default = ["tf_vnet1", "tf_vnet2"]
  type    = list(string)
}

