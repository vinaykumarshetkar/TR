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

variable location {
        default= "westus"
}

variable "rg_name" {
  default = "tf_rg"
}