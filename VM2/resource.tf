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

resource "azurerm_resource_group" "testRG" {
  name     = var.RGname
  location = var.RGlocation
}

resource ""
variable "RGname" {
  default = "test"
}

variable "RGlocation" {
  default = "West US"
}

output "testRG" {
value= {
id =azurerm_resource_group.testRG.id
location= azurerm_resource_group.testRG.location
  value = azurerm_resource_group.testRG.name
}
}
